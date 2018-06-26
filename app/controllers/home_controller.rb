class HomeController < BaseController

	def index
		@latest_posts = Post.last(9)
    @logos = CustomerLogo.all_actived_with_view_order
	end
end
