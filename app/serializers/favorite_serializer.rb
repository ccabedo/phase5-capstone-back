class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :favorite
  has_one :user
  has_one :listing
end
