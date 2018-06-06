class BaseController < ApplicationController
	before_action :load_footer_data

	private
		def load_footer_data
			@categories = Category.includes(:posts).all
			@tags = Tag.all
		end
end
