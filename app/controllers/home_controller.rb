class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @games = Game.where(status: 'preparation')
  end
end
