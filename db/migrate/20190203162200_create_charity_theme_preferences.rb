class CreateCharityThemePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :charity_theme_preferences do |t|
      t.references :user, foreign_key: true
      t.references :charity_theme, foreign_key: true

      t.timestamps
    end
  end
end
