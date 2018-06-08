class Admin::PostsController < AdminController

	def index
		@posts = Post.all.order(:id)
		@posts.includes(:category, :user)
	end

	def new
		@post = Post.new
		@categories = Category.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
		@categories = Category.all
	end

	def update
    @post = Post.find(params[:id])
    @post.update(permit_params)
    redirect_to :back
  end

  def destroy
  end

  def create
  	params[:post][:user_id] = 1
  	@post = Post.create(permit_params)
  	redirect_to edit_admin_post_path(@post)
  end

  private
    def permit_params
      params.require(:post).permit(:title, :category_id, :user_id, :description, :content, :avatar)
    end
end
