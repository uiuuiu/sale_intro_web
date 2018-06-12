class AboutsController < BaseController

  def index
    @about = About.find_by(active: 1)
  end
end
