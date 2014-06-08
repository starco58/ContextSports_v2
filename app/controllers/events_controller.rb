class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new

    @event.game = params[:game]

    @event.date = params[:date]

    @event.game_time = params[:game_time]

    @event.home_team = params[:home_team]

    @event.away_team = params[:away_team]



    if @event.save
      redirect_to "/events", :notice => "Event created successfully."
    else
      render 'new'
    end

  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])


    @event.game = params[:game]

    @event.date = params[:date]

    @event.game_time = params[:game_time]

    @event.home_team = params[:home_team]

    @event.away_team = params[:away_team]



    if @event.save
      redirect_to "/events", :notice => "Event updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy


    redirect_to "/events", :notice => "Event deleted."

  end

  def track_event
    @event = Event.find(params[:id])
    @all_plays = Plays.where(play_id['#{@event}'])

  end


end
