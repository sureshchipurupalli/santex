class ChangeHomeIdHomeIfoEnqueries < ActiveRecord::Migration[5.0]
  def change
  rename_column :home_info_enqueries, :home_id, :home_photo_id
  end
end
