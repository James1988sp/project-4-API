class UserSerializer < ActiveModel::Serializer
  has_many :races
  # has_many :races_attending
  attributes :id, :name, :email
end
