class User < ApplicationRecord
    has_many :reviews
    has_many :bookings, dependent: :destroy
    has_many :listings, through: :reviews
    has_many :listings, through: :bookings

    validates :username, uniqueness: true

    has_secure_password  
end
