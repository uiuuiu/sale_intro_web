class CreateContactForms < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_forms do |t|
      t.string :full_name
      t.string :phone_number
      t.string :email
      t.string :title
      t.text :address
      t.text :content
      t.integer :active
      
      t.timestamps
    end
  end
end
