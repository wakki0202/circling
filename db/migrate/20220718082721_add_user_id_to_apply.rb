class AddUserIdToApply < ActiveRecord::Migration[7.0]
  def change
    add_column :applies, :user_id, :integer
  end
end
