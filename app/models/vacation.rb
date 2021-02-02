class Vacation < ApplicationRecord
    belongs_to :user
    has_many :destinations, through: :vacation_destinations
    validates_presence_of :title, :date
end
