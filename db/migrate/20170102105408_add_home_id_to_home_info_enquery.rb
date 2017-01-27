class AddHomeIdToHomeInfoEnquery < ActiveRecord::Migration[5.0]
  def change
  add_column :home_info_enqueries, :home_id, :integer 
  end
end
