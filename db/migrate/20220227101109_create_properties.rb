class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :property_area
      t.integer :land_area
      
      t.references :agent

      t.timestamps
    end
  end
end
