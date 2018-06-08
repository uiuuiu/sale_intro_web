class TagsController < BaseController

	def index
		
	end

	def show
		@tag = Tag.find(params[:id])
	end
end
