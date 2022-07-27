class AddCircleIdToApply < ActiveRecord::Migration[7.0]
  def change
    add_column :applies, :circle_id, :integer
  end
end
