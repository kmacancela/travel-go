class LocationsController < ApplicationController

    def index
        # @locations = Location.all


        # location_events = Location.all.map do |location|
        #     location.events
        # end.flatten
        # @locations = location_events.select do |event|
        #     !event.users.include?(@current_user)
        # end

        # @locations = Location.all.select do |location|
        #     !location.events.attendees.include?(@current_user)
        # end

        open_events = Event.all.select do |event| 
            !event.users.include?(@current_user)
        end
        @locations = open_events.map do |event|
            event.location
        end.uniq
    end

    def show
        @location = Location.find(params[:id])
    end 
    
end

    