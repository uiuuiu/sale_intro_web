class CreateCustomerLogos < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_logos do |t|
      t.string :name
      t.string :avatar
      t.integer :view_order
      t.integer :active
      t.text :description

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
