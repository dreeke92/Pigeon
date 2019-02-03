class CharityTheme < ApplicationRecord
  has_many :charity_theme_relations
  has_many :charity_theme_preferences
end
