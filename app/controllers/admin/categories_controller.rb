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
  end

  private
    def permit_params
      params.require(:category).permit(:name, :description)
    end
end
