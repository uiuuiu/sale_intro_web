class ServiceCategoriesController < BaseController

  def index
    
  end

  def show
    @category = ServiceCategory.find(params[:id])
  end
end
