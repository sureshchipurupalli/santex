class CreateContactPages < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_pages do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :do_you_have_land
      t.string :moving_time_frame
      t.string :financing
      t.string :town_planning_to_build
      t.string :state
      t.string :assist_you

      t.timestamps
    end
  end
end
