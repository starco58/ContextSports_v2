class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new

    @player.player_name = params[:player_name]

    @player.player_team = params[:player_team]

    @player.player_image = params[:player_image]



    if @player.save
      redirect_to "/players", :notice => "Player created successfully."
    else
      render 'new'
    end

  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])


    @player.player_name = params[:player_name]

    @player.player_team = params[:player_team]

    @player.player_image = params[:player_image]



    if @player.save
      redirect_to "/players", :notice => "Player updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @player = Player.find(params[:id])

    @player.destroy


    redirect_to "/players", :notice => "Player deleted."

  end

  def my_players
    @players = current_user.my_players.player_id
    render 'index'
  end
end
