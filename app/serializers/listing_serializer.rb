class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :address, :city, :bedroom, :bathroom, :description, :amenities, :price, :duration, :image
end
