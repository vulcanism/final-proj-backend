class CryptidsController < ApplicationController
    before_action :set_cryptid, only: [:update, :destroy]

    def index
        @cryptids = Cryptid.all
        render json: @cryptids
    end

    def create
        @cryptid = Cryptid.new(cryptid_params)        
        if @cryptid.save
            render json: @cryptid
        else
            render json: {error: "Error creating cryptid"}
        end
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
        head :no_content
    end

    private

    def cryptid_params
        params.require(:cryptid).permit(:name, :size, :classification)
    end

    def set_cryptid
        @cryptid = Cryptid.find(params[:id])
    end

end
