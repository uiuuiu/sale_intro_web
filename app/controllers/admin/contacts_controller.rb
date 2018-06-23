class Admin::ContactsController < AdminController

  def index
    @contacts = Contact.all.order(:id)
  end

  def new
    @contact = Contact.new
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(permit_params)
    redirect_to :back
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to :back
  end

  def create
    @contact = Contact.create(permit_params)
    redirect_to edit_admin_contact_path(@contact)
  end

  private
    def permit_params
      params.require(:contact).permit(:content, :description, :active)
    end
end
