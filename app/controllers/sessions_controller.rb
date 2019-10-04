class SessionsController < ApplicationController
    skip_before_action :authenticated, only: [:new, :create]

    # def reset
    #   session[:page_count] = 0
    #   # get them back to the page they were on
    #   redirect_to events_path
    # end

    def show
      @events = Event.all
    end
  
    def new
    end
  
    def create
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
      elsif user
        flash[:errors] = ["Wrong password. Try again."]
        redirect_to login_path
      else 
        flash[:errors] = ["Username not found. Try again or sign up."]
        redirect_to login_path
      end 
    end
  
    def destroy
      session.delete(:user_id)
      redirect_to login_path
    end
  
  end