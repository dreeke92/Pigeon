class AddPhotoToCharities < ActiveRecord::Migration[5.2]
  def change
    add_column :charities, :photo, :string
  end
end
