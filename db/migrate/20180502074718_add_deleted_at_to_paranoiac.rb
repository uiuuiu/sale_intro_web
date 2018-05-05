class AddDeletedAtToParanoiac < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :deleted_at, :datetime
    add_index :users, :deleted_at

    add_column :categories, :deleted_at, :datetime
    add_index :categories, :deleted_at

    add_column :menus, :deleted_at, :datetime
    add_index :menus, :deleted_at

    add_column :tags, :deleted_at, :datetime
    add_index :tags, :deleted_at

    add_column :posts, :deleted_at, :datetime
    add_index :posts, :deleted_at

    add_column :posts_tags, :deleted_at, :datetime
    add_index :posts_tags, :deleted_at

    add_column :menu_categories, :deleted_at, :datetime
    add_index :menu_categories, :deleted_at

    add_column :albums, :deleted_at, :datetime
    add_index :albums, :deleted_at

    add_column :album_images, :deleted_at, :datetime
    add_index :album_images, :deleted_at

    add_column :album_images_tags, :deleted_at, :datetime
    add_index :album_images_tags, :deleted_at
  end
end
