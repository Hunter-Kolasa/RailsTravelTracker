class DestinationsController < ApplicationController
    before_action :get_destination, only: [:show, :edit, :update]
    
    def index
        @destinations = Destination.all
    end

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    private

    def get_destination
        @destination = Destination.find_by(params[:id])
    end

    def destination_params
        params.require(:destination).permit(:name, :location, :rating)
    end
end
