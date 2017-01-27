class AddAttachmentFloorplanImagesToHomePhotos < ActiveRecord::Migration
  def self.up
    change_table :home_photos do |t|
      t.attachment :floorplan_images
    end
  end

  def self.down
    remove_attachment :home_photos, :floorplan_images
  end
end
