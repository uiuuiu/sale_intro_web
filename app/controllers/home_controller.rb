class HomeController < BaseController

	def index
		@latest_posts = Post.last(9)
		@categories = Category.includes(:posts).all
	end
end
