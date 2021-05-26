class AddBestGiftToApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :best_gift, :string
  end
end
