class CreateApplies < ActiveRecord::Migration[7.0]
  def change
    create_table :applies do |t|

      t.timestamps
    end
  end
end
