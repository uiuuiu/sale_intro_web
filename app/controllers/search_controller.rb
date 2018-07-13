class SearchController < BaseController

  def index
    params[:q] ||= {}
    @q = ServicePost.ransack(params[:q])
    @posts = @q.result(distinct: true)
  end
end