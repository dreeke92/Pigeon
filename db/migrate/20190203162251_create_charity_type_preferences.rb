class CreateCharityTypePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :charity_type_preferences do |t|
      t.references :user, foreign_key: true
      t.references :charity_type, foreign_key: true

      t.timestamps
    end
  end
end
