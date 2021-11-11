class AddPhotoToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :photo, :string
  end
end
