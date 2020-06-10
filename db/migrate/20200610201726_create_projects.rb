class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :views
      t.string :user_id
      t.date :date
      t.string :project_img

      t.timestamps
    end
  end
end
