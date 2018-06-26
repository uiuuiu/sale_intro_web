class Admin::CustomerLogosController < AdminController

  def index
    @logos = CustomerLogo.all.order(:id)
  end

  def new
    @logo = CustomerLogo.new
  end

  def show
    @logo = CustomerLogo.find(params[:id])
  end

  def edit
    @logo = CustomerLogo.find(params[:id])
  end

  def update
    @logo = CustomerLogo.find(params[:id])
    @logo.update(permit_params)
    redirect_to :back
  end

  def destroy
    @logo = CustomerLogo.find(params[:id])
    @logo.destroy
    redirect_to :back
  end

  def create
    @logo = CustomerLogo.create(permit_params)
    redirect_to edit_admin_customer_logo_path(@logo)
  end

  private
    def permit_params
      params.require(:customer_logo).permit(:name, :avatar, :view_order, :description, :active)
    end
end
