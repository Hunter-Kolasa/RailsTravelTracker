class DestinationsController < ApplicationController
    before_action :get_destination, only: [:show, :edit, :update]
    
    def index
        @destinations = Destination.all
    end

    def new
    end

    def create
        @destination = @vacation.destination.build(destination_params)
        if @destination.save
            flash[:success] = "Destination Created!"
            redirect_to edit_vacation_path(@vacation)
        else
            render :new
        end

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
        params.require(:destination).permit(:country, :state, :city, vacation_ids: [])
    end
end
