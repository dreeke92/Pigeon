class Post < ApplicationRecord
  belongs_to :charity
  mount_uploader :photo, PhotoUploader
end
