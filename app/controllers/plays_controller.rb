class PlaysController < ApplicationController
  def index
    @plays = Play.all
  end

  def show
    @play = Play.find(params[:id])
  end

  def new
    @play = Play.new
  end

  def create
    @play = Play.new

    @play.event_id = params[:event_id]

    @play.player_id = params[:player_id]

    @play.play_type = params[:play_type]

    @play.quarter_play_occured = params[:quarter_play_occured]



    if @play.save
      redirect_to "/plays", :notice => "Play created successfully."
    else
      render 'new'
    end

  end

  def edit
    @play = Play.find(params[:id])
  end

  def update
    @play = Play.find(params[:id])


    @play.event_id = params[:event_id]

    @play.player_id = params[:player_id]

    @play.play_type = params[:play_type]

    @play.quarter_play_occured = params[:quarter_play_occured]



    if @play.save
      redirect_to "/plays", :notice => "Play updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @play = Play.find(params[:id])

    @play.destroy


    redirect_to "/plays", :notice => "Play deleted."

  end
end
