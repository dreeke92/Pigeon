class CharityThemeRelation < ApplicationRecord
  belongs_to :charity
  belongs_to :charity_theme
end
