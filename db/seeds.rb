require 'faker'
Faker::Config.locale = 'vi'

user = User.new(
      :email                 => "admin@gmail.com",
      :password              => "123456",
      :password_confirmation => "123456"
  )
user.save!

arr_categories = [
	"Kinh tế - Tài Chính", "Khoa học - Giáo Dục", "Khoa học - Công nghệ", "Nghệ thuật", "Mạng Xã Hội",
	"Thể thao", "Âm nhạc", "Giải trí", "Du lịch", "Ẩm thực"
]

categories = []
arr_categories.each do |name|
	categories << Category.create(name: name, description: "seed data")
end

posts = []
30.times do |time|
	chosen = (1..8).to_a.sample
	post = Post.create(
		user_id: user.id,
		category_id: categories.sample.id,
		title: Faker::Lorem.sentence,
		content: Faker::Lorem.paragraph,
		description: "test data"
		)
	File.open("db/seed_images/#{chosen}.jpg") do |f|
		post.avatar = f
	end
	post.save
	posts << post
end

arr_tags = [
	"nông nghiệp", "chăn nuôi", "trồng trọt", "công nghệ", "tiên tiến", "giám định", "văn bản",
	"đính kèm", "biểu mẫu", "cây", "rừng", "organic", "trái cây", "gia súc", "gia cầm", "hot"
]
tags = []

arr_tags.each do |name|
	tags << Tag.create(name: name, description: "test data")
end

posts.each do |post|
	(1..10).to_a.sample.times do |time|
		PostsTag.create(post_id: post.id, tag_id: tags.sample.id)
	end
end

arr_service_categories = [
	"Chứng nhận hợp chuẩn", "Chứng nhận hợp quy", "Chứng nhận ISO/HACCP", "Chứng nhận VIETGAP", "Công bố sản phẩm",
	"Sở hữu trí tuệ", "Xin cấp giấy phép", "Phần mềm ứng dụng"
]

categories = []
arr_service_categories.each do |name|
	categories << ServiceCategory.create(name: name, description: "seed data")
end

posts = []
30.times do |time|
	chosen = (1..8).to_a.sample
	post = ServicePost.create(
		user_id: user.id,
		service_category_id: categories.sample.id,
		title: Faker::Lorem.sentence,
		content: Faker::Lorem.paragraph,
		description: "test data"
		)
	File.open("db/seed_images/#{chosen}.jpg") do |f|
		post.avatar = f
	end
	post.save
	posts << post
end


















