class TeamsController < ApplicationController
    def index
        @teams = Team.all
        render json: @teams, include: [:players], only: [:name]
    end

    def show
        @team = Team.find(params[:id])
        render json: @team, include: [:players]
    end

    def create
        @team = Team.create(
            name: params[:name]
        )
        render json: @team, include: [:players]
    end

    def update
        @team = Team.find(params[:id])
        @team.update(
            name: params[:name]
        )
        render json: @team, include: [:players]
    end

    def destroy
        @team = Team.find(params[:id])
        @team.destroy
        render json: "Team has been deleted."
    end
end
