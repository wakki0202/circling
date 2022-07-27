class AddColumnsToApply < ActiveRecord::Migration[7.0]
  def change
    add_column :applies, :name, :string
    add_column :applies, :appeal, :text
  end
end
