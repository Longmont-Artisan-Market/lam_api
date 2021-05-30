class AddPaidToApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :paid, :boolean
  end
end
