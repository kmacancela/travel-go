class EventsController < ApplicationController
    # before_action :set_event only: [:show, :destroy]

    # Need to also add events that do not clash with current user's current events
    def index
        all_events = Event.all
        @events = all_events.select do |event| 
            !event.users.include?(@current_user)
        end
    end

    def show
        @event = Event.find(params[:id])
        @location = @event.location
        session[:event_id] = @event.id
    end

    def new 
        @event = Event.new
        @location = Location.new
        @locations = Location.all
        @categories = Category.all
    end

    def create 
        event = Event.create(events_params)
        Attendee.create(user_id: @current_user.id, event_id: event.id)
        redirect_to user_path(@current_user)
    end 

    def destroy
        @event.destroy
        Event.save
    end

    private

    def events_params
        params.require(:event).permit(:title, :event_date, :location_id, :category_id, :content)
    end

end
