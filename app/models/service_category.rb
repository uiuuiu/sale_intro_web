class ServiceCategory < ApplicationRecord

  has_many :service_posts
  has_many :home_service_posts, -> {order(created_at: :desc).limit(5)}, class_name: ServicePost.name, foreign_key: :service_category_id

  def self.all_without_temp
    where.not(name: "temp")
  end

  def self.temp_category
    find_by(name: "temp")
  end

  def temp?
    self.name == "temp"
  end
end
