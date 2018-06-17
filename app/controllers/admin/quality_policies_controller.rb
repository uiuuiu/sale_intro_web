class Admin::QualityPoliciesController < AdminController

  def index
    @quality_policies = QualityPolicy.all.order(:id)
  end

  def new
    @quality_policy = QualityPolicy.new
  end

  def show
    @quality_policy = QualityPolicy.find(params[:id])
  end

  def edit
    @quality_policy = QualityPolicy.find(params[:id])
  end

  def update
    @quality_policy = QualityPolicy.find(params[:id])
    @quality_policy.update(permit_params)
    redirect_to :back
  end

  def destroy
    @quality_policy = QualityPolicy.find(params[:id])
    @quality_policy.destroy
  end

  def create
    params[:quality_policy][:user_id] = 1
    @quality_policy = QualityPolicy.create(permit_params)
    redirect_to edit_admin_quality_policy_path(@quality_policy)
  end

  private
    def permit_params
      params.require(:quality_policy).permit(:description, :content, :avatar, :active)
    end
end
