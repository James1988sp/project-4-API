class Race < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :drones
  has_many :comments
end
