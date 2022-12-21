class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :password_digest, :avatar
  has_many :bookings
  has_many :reviews
end
