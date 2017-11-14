class CreateTrailGears < ActiveRecord::Migration[5.1]
  def change
    create_table :trail_gears do |t|
      t.integer :trail_id
      t.integer :gear_id
    end
  end
end
