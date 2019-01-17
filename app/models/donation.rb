class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :charity
  validates :credit, presence: true
end
