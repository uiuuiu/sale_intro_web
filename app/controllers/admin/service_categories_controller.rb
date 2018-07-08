class Admin::ServiceCategoriesController < AdminController

  before_action :get_category, :check_if_temp_category, except: [:index, :new, :create]

	def index
		@categories = ServiceCategory.all_without_temp.order(:id)
	end

	def new
		@category = ServiceCategory.new
	end

	def show
	end

	def edit
	end

	def update
    @category.update(permit_params)
    redirect_to :back
  end

  def destroy
  	@category.destroy
  	if @category.errors.blank?
  		@category.service_posts.update_all(service_category_id: ServiceCategory.temp_category.id)
  	end
    redirect_to :back
  end

  def create
    @category = ServiceCategory.create(permit_params)
    redirect_to edit_admin_service_category_path(@category)
  end

  private
    def permit_params
      params.require(:service_category).permit(:name, :description, :order_pos)
    end

    def get_category
      @category = ServiceCategory.find(params[:id])
    end

    def check_if_temp_category
      return redirect_to :back if @category.temp?
    end
end
