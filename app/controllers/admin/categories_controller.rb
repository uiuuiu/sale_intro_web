class Admin::CategoriesController < AdminController

  before_action :get_category, :check_if_temp_category, except: [:index, :new, :create]

	def index
		@categories = Category.all_without_temp.order(:id)
	end

	def new
		@category = Category.new
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
  	@category = Category.find(params[:id])
  	@category.destroy
  	if @category.errors.blank?
  		@category.posts.update_all(category_id: ServiceCategory.temp_category.id)
  	end
    redirect_to :back
  end

  def create
    @category = Category.create(permit_params)
    redirect_to edit_admin_category_path(@category)
  end

  private
    def permit_params
      params.require(:category).permit(:name, :description)
    end

    def get_category
      @category = Category.find(params[:id])
    end

    def check_if_temp_category
      return redirect_to :back if @category.temp?
    end
end
