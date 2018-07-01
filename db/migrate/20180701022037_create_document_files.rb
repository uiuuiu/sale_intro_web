class CreateDocumentFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :document_files do |t|
      t.string :title
      t.string :file
      t.text :description
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
