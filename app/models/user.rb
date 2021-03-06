class User < ApplicationRecord
  has_secure_password valiations: false
  has_many :drones
  has_many :races
  has_and_belongs_to_many :races_attending, class_name: "Race", join_table: "races_users"
  has_many :comments

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, unless: :oauth_login?
  validates :password, presence: true, confirmation: true, unless: :oauth_login?, on: :create

  def oauth_login?
    github_id.present?
  end
end
