class RemoveEventCategoryIdFromCategory < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :event_category_id
  end
end
