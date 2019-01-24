class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth_date, :date
    add_column :users, :longitude, :integer
    add_column :users, :latitude, :integer
    add_column :users, :phone_number, :varchar
    add_column :users, :total_credit, :integer
  end
end
