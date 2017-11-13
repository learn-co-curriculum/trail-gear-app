class CreateTrails < ActiveRecord::Migration[5.1]
  def change
    create_table :trails do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.integer :difficulty, default: 0
      t.integer :length

      t.timestamps
    end
  end
end
