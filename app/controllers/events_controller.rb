class EventsController < ApplicationController
    # before_action :set_event only: [:show, :destroy]

    # Need to get events that current user does not already have
    # Then need to also add events that do not clash with current user's current events
    def index
        all_events = Event.all
        @events = all_events.select do |event|
            !event.users.include?(@current_user)
        end
    end

    def show
        @event = Event.find(params[:id])
        @location = @event.location
    end

    def new 
        @event = Event.new
        @location = Location.new
    end

    def create 
        location = Location.find_by(zipcode: 10011) # Need to fix this
        event = Event.create(events_params.merge(location_id: location.id))
        category = Category.find_by(name: "Music") # Need to fix this
        EventCategory.create(event_id: event.id, category_id: category.id)
        Attendee.create(user_id: @current_user.id, event_id: event.id)
        redirect_to user_path(@current_user)
    end 

    def destroy
        @event.destroy
    end

    private

    def events_params
        params.require(:event).permit(:title, :start_time, :end_time, :event_date)
    end

end
