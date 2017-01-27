class ChangePriceToFloatInHomes < ActiveRecord::Migration[5.0]
  def change
   change_column :homes, :price, :string  
  end
end
