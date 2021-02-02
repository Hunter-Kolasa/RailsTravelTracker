class User < ApplicationRecord
    has_many :vacations
    validates_presence_of :username, :first_name, :last_name, :email, :password
end
