class EventsController < ApplicationController
    # before_action :set_event only: [:show, :destroy]

    def index
        @events = Event.all
    end

    def new 
        @event = Event.new
    end

    def show
        @event = Event.find(params[:id])
        # redirect_to event_path(@event)
    end

    def create 
        @event = Event.create(params.require(:event).permit(:title, :start_time, :end_time, :event_date, :location_id))
    end 

    def edit
    end

    def update
    end

    def destroy
        @event.destroy
    end

end
