class Admin::PostsController < AdminController

	def index
		@posts = Post.all.order(:id)
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
    @post = Post.find(params[:id])
    @post.update(permit_params)
    redirect_to :back
  end

  def destroy
  end

  private
    def permit_params
      params.require(:post).permit(:title, :category_id, :user_id, :description, :content)
    end
end
