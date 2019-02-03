class CharityThemePreference < ApplicationRecord
  belongs_to :user
  belongs_to :charity_theme
end
