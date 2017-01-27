class CreateHomePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :home_photos do |t|
      t.integer :home_id

      t.timestamps
    end
  end
end
