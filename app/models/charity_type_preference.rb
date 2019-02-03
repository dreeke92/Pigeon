class CharityTypePreference < ApplicationRecord
  belongs_to :user
  belongs_to :charity_type
end
