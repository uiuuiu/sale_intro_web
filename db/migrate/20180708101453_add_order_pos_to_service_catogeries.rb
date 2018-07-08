class AddOrderPosToServiceCatogeries < ActiveRecord::Migration[5.0]
  def change
    add_column :service_categories, :order_pos, :integer
  end
end
