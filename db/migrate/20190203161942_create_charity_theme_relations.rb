class CreateCharityThemeRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :charity_theme_relations do |t|
      t.references :charity, foreign_key: true
      t.references :charity_theme, foreign_key: true

      t.timestamps
    end
  end
end
