class Meal < ActiveRecord::Base
  mount_uploader :image_url, ImageUrlUploader
end
