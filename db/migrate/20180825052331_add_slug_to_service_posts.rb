class AddSlugToServicePosts < ActiveRecord::Migration[5.0]
  def change
    add_column :service_posts, :slug, :string
    add_index  :service_posts, :slug
  end
end
