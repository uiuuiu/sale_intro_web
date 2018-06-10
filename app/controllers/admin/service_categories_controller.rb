class Admin::ServiceCategoriesController < AdminController

	def index
		@categories = ServiceCategory.all.order(:id)
	end

	def new
		@category = ServiceCategory.new
	end

	def show
		@category = ServiceCategory.find(params[:id])
	end

	def edit
		@category = ServiceCategory.find(params[:id])
	end

	def update
    @category = ServiceCategory.find(params[:id])
    @category.update(permit_params)
    redirect_to :back
  end

  def destroy
  	@category = ServiceCategory.find(params[:id])
  	@category.destroy
  	if @category.errors.blank?
  		@category.posts.update_all(category_id: 0)
  	end
  end

  def create
    @category = ServiceCategory.create(permit_params)
    redirect_to edit_admin_service_category_path(@category)
  end

  private
    def permit_params
      params.require(:service_category).permit(:name, :description)
    end
end
