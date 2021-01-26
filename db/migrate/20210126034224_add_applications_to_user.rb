class AddApplicationsToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :applications, :user, foreign_key: true
  end
end
