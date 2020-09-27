# frozen_string_literal: true

class HelloWorldController < ApplicationController
  # layout "hello_world"
  layout "application"

  def index
    @games = Game.with_attached_list_image
    @images = @games.map do |game|
      { game_id: game.id, url: url_for(game.list_image) }
  end

  end


end
