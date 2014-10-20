class PlayersController < ApplicationController

  def new
  end

  def create
    @player = Player.new(player_params)

    elo = Rating.new(@player.username).online

    @player.rating = elo

    @player.save

    redirect_to root_path
  end

  private

  def player_params
    params.require(:player).permit(:username)
  end
end
