class AttendeesController < ApplicationController

    def new
    end

    def create
        attendee = Attendee.create(user_id: @current_user.id, event_id: params[:event_id])
        redirect_to user_path(@current_user)
    end

    def destroy
        attendee = Attendee.find_by(event_id: params[:id])
        attendee.destroy
        redirect_to user_path(@current_user)
    end

end
