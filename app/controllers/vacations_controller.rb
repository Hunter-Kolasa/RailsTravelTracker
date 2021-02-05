class VacationsController < ApplicationController
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

    def vacation_params
        params.require(:vacation).permit(:title, :description, :date, :public, destination_attributes: [:name, :location, :rating, :description])
    end
end
