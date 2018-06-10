class ServicePostsController < BaseController

  def show
    @post = ServicePost.find(params[:id])
    @related_posts = @post.service_category.service_posts.where.not(id: @post.id).latests(10)
  end
end
