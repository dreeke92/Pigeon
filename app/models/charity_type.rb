class CharityType < ApplicationRecord
  has_many :charity_type_relations
  has_many :charity_type_preferences
end
