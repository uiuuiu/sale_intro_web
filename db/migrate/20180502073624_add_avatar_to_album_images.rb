class AddAvatarToAlbumImages < ActiveRecord::Migration[5.0]
  def change
    add_column :album_images, :al_image, :string
  end
end
