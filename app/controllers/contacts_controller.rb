class ContactsController < BaseController

  def index
    @contact = Contact.find_by(active: 1)
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.create(permit_params)
    redirect_to action: :index
  end

  private
    def permit_params
      params.require(:contact_form).permit(:full_name, :phone_number, :email, :title, :address, :content)
    end
end
