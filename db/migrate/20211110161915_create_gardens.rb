class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :description
      t.string :banner_url
      t.string :address

      t.timestamps
    end
  end
end
