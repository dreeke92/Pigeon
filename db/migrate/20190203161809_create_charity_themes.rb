class CreateCharityThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :charity_themes do |t|
      t.string :name

      t.timestamps
    end
  end
end
