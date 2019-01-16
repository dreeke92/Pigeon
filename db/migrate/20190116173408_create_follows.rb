class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.references :user, foreign_key: true
      t.references :charity, foreign_key: true
      t.boolean :status, :default => true
      t.timestamps
    end
  end
end
