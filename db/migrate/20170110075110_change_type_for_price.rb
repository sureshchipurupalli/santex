class ChangeTypeForPrice < ActiveRecord::Migration[5.0]
  def change
    change_column :homes, :price, :text

  end
end
