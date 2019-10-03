class DropEventCategoryTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :event_categories
  end
end
