class DocumentFile < ApplicationRecord
  mount_uploader :file, DocumentFileUploader
end
