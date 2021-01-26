class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.string :website
      t.integer :category
      t.boolean :mlm_status
      t.string :online_orders
      t.boolean :previous_vendor
      t.boolean :mask_maker
      t.string :facebook_link
      t.string :instagram_link
      t.string :image_one
      t.string :image_two
      t.string :previous_efforts
      t.string :additional_info
      t.string :description
      t.boolean :first_event
      t.string :price_range
      t.integer :booth_choice

      t.timestamps
    end
  end
end
