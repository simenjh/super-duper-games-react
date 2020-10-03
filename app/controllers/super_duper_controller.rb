# frozen_string_literal: true

class SuperDuperController < ApplicationController
  # layout "hello_world"
  layout "application"

  def home
    @ratchet = Game.find_by(name: "Ratchet & Clank")
    @games = Game.with_attached_list_image.first(4)
    @images = @games.map do |game|
      { game_id: game.id, url: url_for(game.list_image) }
  end

  end


end
