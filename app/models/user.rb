class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :scores
  has_many :games, through: :scores

  def calc_handicap(date)
    @scores = scores.joins(:game).where('games.start_date < ?', date).order(value: :asc).pluck(:value).last(6)
    @scores.pop
    @value = @scores.inject{|sum,x| sum + x }
    @value / @scores.count
  end
end
