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



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end


end
