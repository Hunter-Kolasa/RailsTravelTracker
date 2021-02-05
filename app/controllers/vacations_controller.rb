class VacationsController < ApplicationController
    before_action :logged_in_user, :current_user
    def new
        @vacation = Vacation.new
    end

    def create
        @vacation = @user.vacations.build(vacation_params)
        if @vacation.save
            flash[:success] = "Vacation Created!"
            redirect_to user_vacation_path(@vacation)
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
