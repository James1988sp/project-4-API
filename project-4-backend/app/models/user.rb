class User < ApplicationRecord
  has_many :drones
  has_many :races, through: :drones 
end
