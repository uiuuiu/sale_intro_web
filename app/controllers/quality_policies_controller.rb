class QualityPoliciesController < BaseController

  def index
    @quality_policy = QualityPolicy.find_by(active: 1)
  end
end
