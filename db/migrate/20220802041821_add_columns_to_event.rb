class AddColumnsToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :title, :string
    add_column :events, :content, :text
    add_column :events, :user_id, :integer
    add_column :events, :circle_id, :integer
  end
end
