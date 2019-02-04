class CharityTheme < ApplicationRecord
  has_many :charity_theme_relations
  has_many :charity_theme_preferences
  has_many :charities, through: :charity_theme_relations
  has_many :users, through: :charity_theme_preferences
end
