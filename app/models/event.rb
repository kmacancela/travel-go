class Event < ApplicationRecord
    has_many :attendees
    has_many :users, through: :attendees
    belongs_to :location
    belongs_to :category
    has_many :posts
    # has_many :users, through: :posts
end
