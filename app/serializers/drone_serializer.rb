class DroneSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :name, :photo_src, :weight, :skills, :speed, :price

  def photo_src
    object.photo.url
  end
end
