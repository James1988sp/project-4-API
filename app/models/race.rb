class Race < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :drones
  has_and_belongs_to_many :attendees, class_name: "User", join_table: "races_users"

end
