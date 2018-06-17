class CreateQualityPolicies < ActiveRecord::Migration[5.0]
  def change
    create_table :quality_policies do |t|
      t.text :description
      t.text :content
      t.string :avatar

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
