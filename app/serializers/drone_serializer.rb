class DroneSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :name, :photo, :weight, :skills, :speed, :price
end
