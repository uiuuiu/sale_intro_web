class AdminController < ApplicationController
	layout 'admin_application'
  before_action :authenticate_user!
  before_action :authenticate_admin!

  private
    def authenticate_admin!
      return if current_user && current_user.admin?
      return redirect_to root_path
    end
end
