require "babosa"
class ServicePost < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :avatar, AvatarUploader

  belongs_to :user
  # has_many :posts_tags
  # has_many :tags, through: :posts_tags
  belongs_to :service_category

  scope :latests, ->(limit) {
    order(updated_at: :desc).limit(limit)
  }

  def should_generate_new_friendly_id?
    title_changed? || super
  end

  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize(transliterations: :vietnamese).to_s
  end
end
