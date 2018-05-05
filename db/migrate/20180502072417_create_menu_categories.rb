class CreateMenuCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_categories do |t|
    	t.integer :parent_id

    	t.references :menu, foreign_key: true
    	t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
