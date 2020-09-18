# frozen_string_literal: true

class HelloWorldController < ApplicationController
  # layout "hello_world"
  layout "application"

  def index
    @hello_world_props = { name: "Stranger" }
    # @first_six_games = ...
  end
end
