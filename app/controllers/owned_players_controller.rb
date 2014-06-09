class OwnedPlayersController < ApplicationController
  def index
    @owned_players = OwnedPlayer.all
  end

  def show
    @owned_player = OwnedPlayer.find(params[:id])
  end

  def new
    @owned_player = OwnedPlayer.new
  end

  def create
    @owned_player = OwnedPlayer.new

    @owned_player.user_id = current_user.id

    @owned_player.player_id = params[:player_id]



    if @owned_player.save
      redirect_to "/owned_players", :notice => "Owned player created successfully."
    else
      render 'new'
    end

  end

  def edit
    @owned_player = OwnedPlayer.find(params[:id])
  end

  def update
    @owned_player = OwnedPlayer.find(params[:id])


    @owned_player.user_id = params[:user_id]

    @owned_player.player_id = params[:player_id]



    if @owned_player.save
      redirect_to "/owned_players", :notice => "Owned player updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @owned_player = OwnedPlayer.find(params[:id])

    @owned_player.destroy


    redirect_to "/owned_players", :notice => "Owned player deleted."

  end

  def my_player
    @my_player = OwnedPlayer.find(params[:id])
  end

end
