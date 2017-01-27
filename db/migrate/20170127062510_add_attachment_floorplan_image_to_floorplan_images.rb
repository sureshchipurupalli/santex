class AddAttachmentFloorplanImageToFloorplanImages < ActiveRecord::Migration
  def self.up
    change_table :floorplan_images do |t|
      t.attachment :floorplan_image
    end
  end

  def self.down
    remove_attachment :floorplan_images, :floorplan_image
  end
end
