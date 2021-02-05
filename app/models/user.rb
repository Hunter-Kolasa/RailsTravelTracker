class User < ApplicationRecord
    has_many :vacations
    # has_secure_password
    accepts_nested_attributes_for :vacations
    before_save { self.email = email.downcase }
    validates_presence_of :username, :first_name, :last_name, :email
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6 }
end
