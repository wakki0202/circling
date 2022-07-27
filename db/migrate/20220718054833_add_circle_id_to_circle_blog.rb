class AddCircleIdToCircleBlog < ActiveRecord::Migration[7.0]
  def change
    add_column :circle_blogs, :circle_id, :integer
  end
end
