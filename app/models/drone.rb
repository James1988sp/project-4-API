class Drone < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :races
  has_many :comments
end
