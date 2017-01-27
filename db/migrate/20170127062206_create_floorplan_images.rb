class CreateFloorplanImages < ActiveRecord::Migration[5.0]
  def change
    create_table :floorplan_images do |t|
      t.integer :home_id

      t.timestamps
    end
  end
end
