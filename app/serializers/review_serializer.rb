class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review
  has_one :user
  has_one :listing
end
