class Campaign < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
