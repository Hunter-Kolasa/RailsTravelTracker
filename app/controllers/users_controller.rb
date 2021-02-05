class UsersController < ApplicationController
    before_action :logged_in_user, only: [:show]
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
        @user = User.find_by(id: session[:user_id])
    end

    private

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation)
    end

    

end
