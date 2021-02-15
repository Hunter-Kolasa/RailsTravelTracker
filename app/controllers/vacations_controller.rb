class VacationsController < ApplicationController
    before_action :current_user, only: [:create, :show]
    def new
        @vacation = Vacation.new
    end

    def create
        
        @vacation = @current_user.vacations.build(vacation_params)
        if @vacation.save
            flash[:success] = "Vacation Created!"
            redirect_to user_path(@current_user, @vacation)
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

    def vacation_params
        params.require(:vacation).permit(:title, :description, :date, :public, destination_ids: [])
    end
end
