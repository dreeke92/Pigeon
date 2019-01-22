class Charity < ApplicationRecord
  belongs_to :user
  has_many :donations
  has_many :follows
  has_many :ratings
  has_many :posts
  validates :name, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader

end
