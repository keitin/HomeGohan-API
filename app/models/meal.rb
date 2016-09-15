class Meal < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  mount_uploader :image_url, ImageUrlUploader
end
