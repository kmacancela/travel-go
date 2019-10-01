class Event < ApplicationRecord
    belongs_to :user
    belongs_to :location
    has_many :event_cateogories
    has_many :categories, through: :event_cateogories

end
