# frozen_string_literal: true

class HelloWorldController < ApplicationController
  # layout "hello_world"
  layout "application"

  def home
    @games = Game.with_attached_list_image.first(4)
    @images = @games.map do |game|
      { game_id: game.id, url: url_for(game.list_image) }
  end

  end


end
