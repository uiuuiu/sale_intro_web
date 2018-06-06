class PostsController < BaseController

	def show
		@post = Post.find(params[:id])
		@related_posts = @post.category.posts.latests(10)
	end
end
