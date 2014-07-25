class GamesController < InheritedResources::Base

  def create
    @game = Game.new(game_params)
    create!
  end

  private
    def game_params
      params.require(:game).permit(:start_date, :end_date, :name, :description, :user_id)
    end
end
