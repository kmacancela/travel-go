class AttendeesController < ApplicationController

    def new
    end

    def create
        attendee = Attendee.create(user_id: @current_user.id, event_id: params[:id])
        redirect_to user_path(@current_user)
    end

end
