class AddApplicationDatesToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :application_open_date, :date
    add_column :events, :application_close_date, :date
  end
end
