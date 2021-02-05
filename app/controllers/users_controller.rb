class UsersController < ApplicationController
    before_action :logged_in_user, :current_user, only: [:show, :edit, :create]
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            flash[:success] = "Success! Welcome #{full_name(@user)}!"
            redirect_to @user
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def create
    end

    private

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation,
            vacation_attributes: [:title, :description, :date])
    end

    

end
