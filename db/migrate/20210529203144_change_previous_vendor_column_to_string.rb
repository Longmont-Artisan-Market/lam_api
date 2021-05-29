class ChangePreviousVendorColumnToString < ActiveRecord::Migration[6.0]
  def change
    change_column :applications, :previous_vendor, :string
  end
end
