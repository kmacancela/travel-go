class RemoveEndTimeFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :end_time
  end
end
