class PlayersController < ApplicationController
  def index
    Player.all
  end
end
