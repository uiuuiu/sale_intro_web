class Admin::AboutsController < AdminController

  def index
    @abouts = About.all.order(:id)
  end

  def new
    @about = About.new
  end

  def show
    @about = About.find(params[:id])
  end

  def edit
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])
    @about.update(permit_params)
    redirect_to :back
  end

  def destroy
    @about = About.find(params[:id])
    @about.destroy
  end

  def create
    @about = About.create(permit_params)
    redirect_to edit_admin_about_path(@about)
  end

  private
    def permit_params
      params.require(:about).permit(:content, :description, :active)
    end
end
