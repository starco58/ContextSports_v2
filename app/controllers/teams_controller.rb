class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new

    @team.city = params[:city]

    @team.team_name = params[:team_name]

    @team.team_logo = params[:team_logo]



    if @team.save
      redirect_to "/teams", :notice => "Team created successfully."
    else
      render 'new'
    end

  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])


    @team.city = params[:city]

    @team.team_name = params[:team_name]

    @team.team_logo = params[:team_logo]



    if @team.save
      redirect_to "/teams", :notice => "Team updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @team = Team.find(params[:id])

    @team.destroy


    redirect_to "/teams", :notice => "Team deleted."

  end
end
