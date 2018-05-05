class CreateAlbumImagesTags < ActiveRecord::Migration[5.0]
  def change
    create_table :album_images_tags do |t|
    	t.references :album_image, foreign_key: true
    	t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
