class Admin::DocumentFilesController < AdminController

  def index
    @document_files = DocumentFile.all.order(:id)
  end

  def new
    @document_file = DocumentFile.new
  end

  def show
    @document_file = DocumentFile.find(params[:id])
  end

  def edit
    @document_file = DocumentFile.find(params[:id])
  end

  def update
    @document_file = DocumentFile.find(params[:id])
    @document_file.update(permit_params)
    redirect_to :back
  end

  def destroy
    @document_file = DocumentFile.find(params[:id])
    @document_file.destroy
    redirect_to :back
  end

  def create
    @document_file = DocumentFile.create(permit_params)
    redirect_to edit_admin_document_file_path(@document_file)
  end

  def download
    @model = DocumentFile.find(params[:id])
    send_file(@model.file.path,
          :filename => @model.file.file.identifier,
          :type => @model.file.content_type,
          :disposition => 'attachment',
          :url_based_filename => true)
  end

  private
    def permit_params
      params.require(:document_file).permit(:title, :file, :description)
    end
end
