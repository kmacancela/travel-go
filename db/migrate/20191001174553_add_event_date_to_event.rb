class AddEventDateToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :event_date, :string
  end
end
