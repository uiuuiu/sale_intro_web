class HomeController < BaseController

	def index
		@latest_posts = Post.last(9)
	end
end
