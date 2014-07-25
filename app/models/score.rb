class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  def adjusted_value
    value - user.calc_handicap(game.start_date)
  end
end
