class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook]
  has_many :donations
  has_many :follows
  has_many :ratings
  has_many :likes
  has_many :comments
  mount_uploader :photo, PhotoUploader
  has_many :charity_type_preferences
  has_many :charity_theme_preferences
  has_many :charity_types, through: :charity_type_preferences
  has_many :charity_themes, through: :charity_theme_preferences

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name   # assuming the user model has a name
      user.photo = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
      user.save!
    end
  end
end
