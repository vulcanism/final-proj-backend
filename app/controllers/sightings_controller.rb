class SightingsController < ApplicationController
    before_action :set_sighting, only: [:update, :destroy]

    def index
        @sightings = Sighting.all
        render json: @sightings
    end

    def create
        @cryptid = Cryptid.find_by(id: params[:cryptid_id])
        @sighting = @cryptid.sightings.create(sighting_params)
        render json: @sighting
    end

    def show
        @sighting = Sighting.find_by(id: params[:id])
        render json: @sighting
    end

    def update
        @sighting.update(sighting_params)
    end

    def destroy
        @cryptid = Cryptid.find_by(id: params[:cryptid_id])

        if @cryptid
            @sightings = @cryptid.sightings.find_by(id: params[:id])
        else
            render json: {error: "Could not find associated cryptid"}
        end
        @sighting.destroy
    end

    private

    def sighting_params
        params.require(:sighting).permit(:date, :location, :note, :cryptid_id)
    end

    def set_sighting
        @sighting = Sighting.find_by(id: params[:id])
    end

end
