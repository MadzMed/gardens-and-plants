class CreateGardenPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :garden_plants do |t|
      t.references :plant, null: false, foreign_key: true
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
