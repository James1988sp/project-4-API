class UserSerializer < ActiveModel::Serializer
  has_many :races_created
  has_many :races_attending
  attributes :id, :username, :email
end
