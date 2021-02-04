class Vacation < ApplicationRecord
    belongs_to :user
    has_many :vacation_destinations
    has_many :destinations, through: :vacation_destinations
    
end
