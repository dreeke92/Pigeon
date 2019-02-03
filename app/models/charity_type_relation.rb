class CharityTypeRelation < ApplicationRecord
  belongs_to :charity
  belongs_to :charity_type
end
