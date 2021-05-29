class ChangeMlmColumnToString < ActiveRecord::Migration[6.0]
  def change
    change_column :applications, :mlm_status, :string
  end
end
