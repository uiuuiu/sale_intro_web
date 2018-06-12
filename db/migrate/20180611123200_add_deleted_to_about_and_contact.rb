class AddDeletedToAboutAndContact < ActiveRecord::Migration[5.0]
  def change
    add_column :abouts, :deleted_at, :datetime
    add_index :abouts, :deleted_at
    add_column :contacts, :deleted_at, :datetime
    add_index :contacts, :deleted_at
    add_column :contact_forms, :deleted_at, :datetime
    add_index :contact_forms, :deleted_at
  end
end
