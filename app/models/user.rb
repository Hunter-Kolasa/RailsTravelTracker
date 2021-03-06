class User < ApplicationRecord
    has_many :vacations
    has_secure_password
    accepts_nested_attributes_for :vacations
    before_save { self.email = email.downcase }
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6 }

    private

    def self.full_name
        self.first_name + " " + self.last_name
    end
end
