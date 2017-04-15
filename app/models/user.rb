class User < ApplicationRecord
  has_many :drones
  has_many :races
  has_many :comments
end
