class ChangeHomeTypeInPages < ActiveRecord::Migration[5.0]
  def change
  rename_column :pages, :home_type, :select_home

   
  end
end
