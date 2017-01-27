class ChangeHomeIdInHomeInfoEnqueries < ActiveRecord::Migration[5.0]
  def change
 rename_column :home_info_enqueries, :home_photo_id, :home_id
  end
end
