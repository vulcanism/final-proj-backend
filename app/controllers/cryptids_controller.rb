class CryptidsController < ApplicationController
    before_action :set_cryptid, only: [:update, :destroy]

    def index
        @cryptids = Cryptid.all
        render json: @cryptids
    end

    def create
        @cryptid = Cryptid.create(cryptid_params)      
        render json: @cryptid        
    end

    def show
        @cryptid = Cryptid.find_by(id: params[:id])        
        render json: @cryptid
    end

    def update
        @cryptid.update(cryptid_params)
        @cryptid.save
        render json: @cryptid
    end

    def destroy
        @cryptid.destroy
        render json: @cryptid
    end

    private

    def cryptid_params
        params.require(:cryptid).permit(:name, :size, :classification)
    end

    def set_cryptid
        @cryptid = Cryptid.find(params[:id])
    end

end
