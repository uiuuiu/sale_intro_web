class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
    	t.text :content
    	t.text :description
      t.string :avatar
      t.string :title

    	t.references :user, foreign_key: true
    	t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
