class User < ApplicationRecord
    has_many :favorites
    has_many :bookings, dependent: :destroy
    has_many :listings, through: :favorites
    has_many :listings, through: :bookings

    has_secure_password  
end
