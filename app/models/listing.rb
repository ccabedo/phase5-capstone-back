class Listing < ApplicationRecord
    has_many :reviews
    has_many :bookings
    has_many :users, through: :reviews
    has_many :users, through: :bookings
end
