class AlbumImage < ApplicationRecord
	mount_uploader :al_image, AlbumImageUploader
end
