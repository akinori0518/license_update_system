class Address < ApplicationRecord
  belongs_to :user
  mount_uploader :certificate, ImageUploader
end
