class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :race, required: false
  belongs_to :drone, required: false
end
