class CreateServicePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :service_posts do |t|
    	t.text :content
    	t.text :description
      t.string :avatar
      t.string :title

    	t.references :user, foreign_key: true
    	t.references :service_category, foreign_key: true

      t.timestamps
    end
  end
end
