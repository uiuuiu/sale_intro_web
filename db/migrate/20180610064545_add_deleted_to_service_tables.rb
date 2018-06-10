class AddDeletedToServiceTables < ActiveRecord::Migration[5.0]
  def change
  	add_column :service_categories, :deleted_at, :datetime
    add_index :service_categories, :deleted_at
    add_column :service_posts, :deleted_at, :datetime
    add_index :service_posts, :deleted_at
  end
end
