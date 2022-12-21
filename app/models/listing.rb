class Listing < ApplicationRecord
    has_many :favorites
    has_many :bookings, dependent: :destroy
    has_many :users, through: :favorites
    has_many :users, through: :bookings
end
