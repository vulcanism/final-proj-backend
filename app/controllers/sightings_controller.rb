class SightingsController < ApplicationController

    def index
    end

    def create
    end

    def show
    end

    def destroy
    end

    private

    def sighting_params
        params.require(:sighting).permit(:date, :location, :note, :cryptid_id)
    end

end
