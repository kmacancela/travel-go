class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :event_id
      t.integer :user_id
      t.string :post_date
      t.string :post_time
      t.string :content

      t.timestamps
    end
  end
end
