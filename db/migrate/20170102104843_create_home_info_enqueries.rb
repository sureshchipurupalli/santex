class CreateHomeInfoEnqueries < ActiveRecord::Migration[5.0]
  def change
    create_table :home_info_enqueries do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :comments

      t.timestamps
    end
  end
end
