class CryptidsController < ApplicationController

    def index
    end

    def create
    end

    def show
    end

    def destroy
    end

    private

    def cryptid_params
        params.require(:cryptid).permit(:name, :size, :classification)
    end

end
