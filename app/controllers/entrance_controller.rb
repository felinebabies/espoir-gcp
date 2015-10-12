class EntranceController < ApplicationController
  def index
    @games = Game.all
  end
end
