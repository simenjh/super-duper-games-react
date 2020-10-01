class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def show
  end


  def index
    @games = Game.with_attached_list_image
    @images = @games.map do |game|
      { game_id: game.id, url: url_for(game.list_image) }
    end
  end


  def create_playthrough
    random_score = Random.rand(1001)
    game_id = @game.id

    @playthrough = Playthrough.new(score: random_score, user_id: current_user.id, game_id: game_id)

    if playthrough.save
      current_user.update_attribute(:score, current_user.score + random_score)
      current_user.update_user_achievements(game_id)
      flash[:success] = "Hopefully you had fun playing the game!"
      redirect_to games_path
    else
      flash[:danger] = "Game could not be played at this time."
      render "show"
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end


end
