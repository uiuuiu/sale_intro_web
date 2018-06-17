class AddActiveToQualityPolicy < ActiveRecord::Migration[5.0]
  def change
    add_column :quality_policies, :active, :integer
  end
end
