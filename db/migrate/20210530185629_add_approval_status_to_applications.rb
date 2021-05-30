class AddApprovalStatusToApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :approval_status, :integer
  end
end
