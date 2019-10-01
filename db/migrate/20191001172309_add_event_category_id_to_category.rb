class AddEventCategoryIdToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :event_category_id, :integer
  end
end
