class AddAttachmentImageToHomePhotos < ActiveRecord::Migration
  def self.up
    change_table :home_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :home_photos, :image
  end
end
