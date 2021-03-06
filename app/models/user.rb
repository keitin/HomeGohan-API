class User < ActiveRecord::Base
  has_many :meals
  has_many :groups_users
  has_many :groups, through: :groups_users

  mount_uploader :image_url, ImageUrlUploader
end
