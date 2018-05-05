class CreateAlbumImages < ActiveRecord::Migration[5.0]
  def change
    create_table :album_images do |t|
    	t.string :name
    	t.text :description
    	
      t.timestamps
    end
  end
end
