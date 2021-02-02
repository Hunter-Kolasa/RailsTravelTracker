class Destination < ApplicationRecord
    has_many :vacations, through: :vacation_destinations
    validates_presence_of :name, :location
end
