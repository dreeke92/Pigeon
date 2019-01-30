class AddLongDescriptionToCharities < ActiveRecord::Migration[5.2]
  def change
    add_column :charities, :long_description, :text
  end
end
