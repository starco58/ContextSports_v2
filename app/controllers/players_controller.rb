class PlayersController < ApplicationController
  def index
    @player = Player.new

    @players = Player.includes(:team)

    @players_team = @players.where(:players_team)
    
    @teams = Team.all

  end

  def show
    @player = Player.find(params[:id])

    @turnovers = @player.plays.where(:play_type => "Turnover")
    @touchdowns = @player.plays.where(:play_type => "Touchdown")
    # @number_of_touchdowns_responsible = @touchdowns.play_responses.where(:player_responible => "true")

  end

  def new
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

    @my_players = current_user.my_players

  end

  def my_players_plays

    @my_players = current_user.my_players

    @turnovers = @my_players.plays.where(:play_type => "Turnover")
    @touchdowns = @my_players.plays.where(:play_type => "Touchdown")

  end

end
