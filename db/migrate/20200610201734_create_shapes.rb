class CreateShapes < ActiveRecord::Migration[6.0]
  def change
    create_table :shapes do |t|
      t.integer :value1
      t.integer :value2
      t.integer :value3
      t.integer :value4
      t.string :fill
      t.string :stroke
      t.integer :stroke_weight
      t.integer :project_id
      t.integer :render_number
      t.integer :rotation

      t.timestamps
    end
  end
end
