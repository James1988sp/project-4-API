class UserSerializer < ActiveModel::Serializer
  has_many :races
  has_many :drones
  attributes :id, :name, :email, :photo, :nationality
end
