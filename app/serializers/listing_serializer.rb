class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :address, :city, :bedroom, :bathroom, :description, :amenities, :price, :duration, :image
  # has_many :bookings
  # has_many :users
end
