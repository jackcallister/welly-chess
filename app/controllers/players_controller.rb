class PlayersController < ApplicationController

  def create
    @player = Player.new(player_params)
    @player.save
  end

  private

  def player_params
    params.require(:player).permit(:username)
  end
end
