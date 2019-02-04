class CharityType < ApplicationRecord
  has_many :charity_type_relations
  has_many :charity_type_preferences
  has_many :charities, through: :charity_type_relations
  has_many :users, through: :charity_type_preferences
end
