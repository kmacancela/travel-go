class UsersController < ApplicationController
    skip_before_action :authenticated, only: [:new, :create]

    def new 
        @user = User.new 
    end
    
    def create
        user = User.create(user_params)
        if user.valid?
          session[:user_id] = user.id
          redirect_to user_path(user)
        else
          flash[:errors] = ["Invalid Username or Password"]
          redirect_to new_user_path
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username,:password)
    end

end

