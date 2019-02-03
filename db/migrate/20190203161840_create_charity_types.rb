class CreateCharityTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :charity_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
