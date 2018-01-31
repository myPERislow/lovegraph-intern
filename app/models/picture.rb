class Picture < ApplicationRecord
  mount_uploader :image_id, ImageUploader
  belongs_to :inquiry
end
