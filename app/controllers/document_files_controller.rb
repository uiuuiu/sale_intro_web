class DocumentFilesController < BaseController

  def index
    @document_files = DocumentFile.all
  end

  def download
    @model = DocumentFile.find(params[:id])
    send_file(@model.file.path,
          :filename => @model.file.file.identifier,
          :type => @model.file.content_type,
          :disposition => 'attachment',
          :url_based_filename => true)
  end
end
