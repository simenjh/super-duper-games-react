# frozen_string_literal: true

class HelloWorldController < ApplicationController
  # layout "hello_world"
  layout "application"

  def index
    @games = Game.with_attached_images
    # @images_urls = []
    # @images.each { |e| url_for(e) }
    # @image_urls = @images.map { |image| url_for(image) }

    # @images = {}

    @images = @games.map do |game|
      { game_id: game.id, url: url_for(game.images.first) }
    end

    # @games.each_with_index do |game, index|
    #   @images["game_#{index}"] = { game_id: game.id, url: url_for(game.images.first) }
    #   puts index
    # end

  end


end
