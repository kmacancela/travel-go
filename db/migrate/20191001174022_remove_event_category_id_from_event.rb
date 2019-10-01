class RemoveEventCategoryIdFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :event_category_id
  end
end
