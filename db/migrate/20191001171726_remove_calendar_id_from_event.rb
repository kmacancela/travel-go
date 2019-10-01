class RemoveCalendarIdFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :calendar_id
  end
end
