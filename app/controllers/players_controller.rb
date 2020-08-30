class PlayersController < ApplicationController
    def index
        @players = Player.all
        render json: @players
    end

    def show
        @player = Player.find(params[:id])
        render json: @player
    end

    def create
        @player = Player.create(
            name: params[:name],
            number: params[:number],
            team_id: params[:team_id]
        )
        render json: @player, include: [:team]
    end

    def update
        @player = Player.find(params[:id])
        @player.update(
            name: params[:name],
            number: params[:number],
            team_id: params[:team_id]
        )
        render json: @player, include: [:team]
    end

    def destroy
        @player = Player.find(params[:id])
        @player.destroy
        render json: "Player deleted."
    end
end
