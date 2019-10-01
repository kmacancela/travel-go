class LocationsController < ApplicationController

    def index
        @locations = Location.all
    end

    def show
        @location = Location.find(params.require(:location).permit(:city, :state, :country, :zipcode))
    end 

    
end

    