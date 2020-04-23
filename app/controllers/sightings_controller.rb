class SightingsController < ApplicationController
    before_action :set_sighting, only: [:update, :destroy]

    def index
        @cryptid = Cryptid.find_by(id: params[:id])
        
        if @cryptid
            @sightings = @cryptid.sightings
        else
            render json: {error: "Could not find associated cryptid"}
        end
        render json: @sightings
    end

    def create
    end

    def show
    end

    def update
    end

    def destroy
    end

    private

    def sighting_params
        params.require(:sighting).permit(:date, :location, :note, :cryptid_id)
    end

    def set_sighting
        @sighting = Sighting.find_by(id: params[:id])
    end

end
