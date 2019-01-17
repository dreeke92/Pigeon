class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :charity
  validates :rating, presence: true
end
