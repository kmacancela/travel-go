class Event < ApplicationRecord
    has_many :attendees
    has_many :users, through: :attendees
    belongs_to :location
    has_many :event_cateogories
    has_many :categories, through: :event_cateogories
    has_many :posts
    # has_many :users, through: :posts
end
