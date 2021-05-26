class AddShortDescriptiontoApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :short_description, :string
  end
end
