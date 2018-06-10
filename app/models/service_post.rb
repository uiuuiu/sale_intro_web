class ServicePost < ApplicationRecord

  mount_uploader :avatar, AvatarUploader

  belongs_to :user
  # has_many :posts_tags
  # has_many :tags, through: :posts_tags
  belongs_to :service_category

  scope :latests, ->(limit) {
    order(updated_at: :desc).limit(limit)
  }
end
