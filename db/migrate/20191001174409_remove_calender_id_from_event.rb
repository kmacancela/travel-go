class RemoveCalenderIdFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :calender_id
  end
end
