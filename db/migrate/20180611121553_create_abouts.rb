class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.text :description
      t.text :content
      t.integer :active
      
      t.timestamps
    end
  end
end
