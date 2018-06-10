class PostsController < BaseController

	def show
		@post = Post.find(params[:id])
		@related_posts = @post.category.posts.where.not(id: @post.id).latests(10)
	end
end
