class BaseController < ApplicationController
	before_action :load_footer_data, :set_search_object

	private
		def load_footer_data
			@categories = Category.includes(:posts).all_without_temp.order(:id)
      @service_categories = ServiceCategory.all_without_temp.order_menu.order(:id)
			@tags = Tag.all
		end

    def set_search_object
      @q = ServicePost.ransack params[:q]
    end
end
