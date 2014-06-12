class PlayResponsesController < ApplicationController
  def index
    @play_responses = PlayResponse.all

    @player_name = Player.all

  end

  def show
    @play_response = PlayResponse.find(params[:id])
  end

  def new
    @play_response = PlayResponse.new

    @play_response.player_id = params[:player_id]

    @play_response.play_id = params[:id]

    @play_response.user_id = current_user.id

    @play_response.player_responible = params[:player_responible]

    @play_response.comment = params[:comment]

  end

  def create
    @play_response = PlayResponse.new

    @play_response.player_id = params[:player_id]

    @play_response.play_id = params[:id]

    @play_response.user_id = current_user.id

    @play_response.player_responible = params[:player_responible]

    @play_response.comment = params[:comment]



    if @play_response.save
      redirect_to "/play_responses", :notice => "Play response created successfully."
    else
      render 'new'
    end

  end

  def edit
    @play_response = PlayResponse.find(params[:id])
  end

  def update
    @play_response = PlayResponse.find(params[:id])


    @play_response.play_id = params[:play_id]

    @play_response.player_id = params[:player_id]

    @play_response.user_id = params[:user_id]

    @play_response.player_responible = params[:player_responible]

    @play_response.comment = params[:comment]



    if @play_response.save
      redirect_to "/play_responses", :notice => "Play response updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @play_response = PlayResponse.find(params[:id])

    @play_response.destroy


    redirect_to "/play_responses", :notice => "Play response deleted."

  end
end
