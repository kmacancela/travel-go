class CategoriesController < ApplicationController

    def index 
        # @categories = Category.all

        open_events = Event.all.select do |event| 
            !event.users.include?(@current_user)
        end
        @categories = open_events.map do |event|
            event.category
        end.uniq
    end

    def show 
        @category = Category.find(params[:id])
    end

end 