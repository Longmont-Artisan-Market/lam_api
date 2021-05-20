class AddApplicationstoEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :applications, :event, foreign_key: true
  end
end
