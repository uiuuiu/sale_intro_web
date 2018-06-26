class CustomerLogo < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  scope :all_actived_with_view_order, -> {
    where(active: 1).order(view_order: :asc, id: :asc)
  }
end
