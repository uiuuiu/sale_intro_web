class Admin::CategoriesController < AdminController

	def index
		@categories = Category.all.order(:id)
	end

	def new
		@category = Category.new
	end

	def show
		@category = Category.find(params[:id])
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
    @category = Category.find(params[:id])
    @category.update(permit_params)
    redirect_to :back
  end

  def destroy
  	@category = Category.find(params[:id])
  	@category.destroy
  	if @category.errors.blank?
  		@category.posts.update_all(category_id: 0)
  	end
  end

  def create
    @category = Category.create(permit_params)
    redirect_to edit_admin_category_path(@category)
  end

  private
    def permit_params
      params.require(:category).permit(:name, :description)
    end
end
