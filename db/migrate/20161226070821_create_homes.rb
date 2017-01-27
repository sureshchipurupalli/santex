class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :home_type
      t.string :name
      t.integer :no_of_bedrooms
      t.string :building_method
      t.integer :series
      t.text :description
      t.float :sft
      t.integer :no_of_bathrooms
      t.text :other

      t.timestamps
    end
  end
end
