class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  has_many :donations
  has_many :follows
  has_many :ratings
  has_many :likes
  has_many :comments
  mount_uploader :photo, PhotoUploader
end
