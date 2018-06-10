class Admin::ServicePostsController < AdminController

  def index
    @posts = ServicePost.all.order(:id)
    @posts.includes(:category, :user)
  end

  def new
    @post = ServicePost.new
    @categories = ServiceCategory.all
  end

  def show
    @post = ServicePost.find(params[:id])
  end

  def edit
    @post = ServicePost.find(params[:id])
    @categories = ServiceCategory.all
  end

  def update
    @post = ServicePost.find(params[:id])
    @post.update(permit_params)
    redirect_to :back
  end

  def destroy
    @post = ServicePost.find(params[:id])
    @post.destroy
  end

  def create
    params[:service_post][:user_id] = 1
    @post = ServicePost.create(permit_params)
    redirect_to edit_admin_service_post_path(@post)
  end

  private
    def permit_params
      params.require(:service_post).permit(:title, :service_category_id, :user_id, :description, :content, :avatar)
    end
end
