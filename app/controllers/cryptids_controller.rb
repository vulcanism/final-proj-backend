class CryptidsController < ApplicationController
    before_action :set_cryptid, only: [:update, :destroy]

    def index
        @cryptids = Cryptid.all
        options = {
            include: [:sightings]
        }
        render json: CryptidSerializer.new(@cryptids, options)
    end

    def create
        @cryptid = Cryptid.create!(cryptid_params)
        options = {
            include: [:sightings]
        }
        if @cryptid.save
            render json: CryptidSerializer.new(@cryptid)
        else
            render json: {error: "Error creating cryptid"}
        end
    end

    def show
        @cryptid = Cryptid.find_by(id: params[:id])
        options = {
            include: [:sightings]
        }
        render json: CryptidSerializer.new(@cryptid, options)
    end

    def update
        @cryptid.update(cryptid_params)
        head :no_content
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
        @cryptid = Cryptid.find_by(id: params[:id])
    end

end
