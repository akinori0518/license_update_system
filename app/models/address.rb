class Address < ApplicationRecord
  belongs_to :user
  mount_uploader :icertificate, ImageUploader
end
