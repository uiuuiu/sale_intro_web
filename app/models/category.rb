class Category < ApplicationRecord

	has_many :posts

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
