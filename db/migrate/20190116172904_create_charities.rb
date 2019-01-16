class CreateCharities < ActiveRecord::Migration[5.2]
  def change
    create_table :charities do |t|
      t.string :name
      t.text :description
      t.string :profile_picture
      t.string :website_url
      t.integer :longitude
      t.integer :latitude
      t.string :phone_number
      t.string :email
      t.string :geographical_reach
      t.string :category
      t.string :status, :default => "requested"
      t.references :user, foreign_key: true
      t.integer :internal_rating

      t.timestamps
    end
  end
end
