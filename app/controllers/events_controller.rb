class EventsController < ApplicationController
    # before_action :set_event only: [:show, :destroy]

    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
        @location = @event.location
    end

    def new 
        @event = Event.new
        # @event_category = EventCategory.new
    end

    def create 
        event = Event.create(events_params.merge(user_id: @current_user.id))
        # EventCategory.create(params.require(:event_category).permit(:category_id).merge(event_id: event.id))
        redirect_to user_path(@current_user)
    end 

    def edit
    end

    def update
    end

    def destroy
        @event.destroy
    end

    private

    def events_params
        params.require(:event).permit(:title, :start_time, :end_time, :event_date, :location_id)
    end

end
