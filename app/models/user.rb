class User < ApplicationRecord
    has_many :vacations
    has_secure_password
end
