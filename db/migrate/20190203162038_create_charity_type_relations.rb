class CreateCharityTypeRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :charity_type_relations do |t|
      t.references :charity, foreign_key: true
      t.references :charity_type, foreign_key: true

      t.timestamps
    end
  end
end
