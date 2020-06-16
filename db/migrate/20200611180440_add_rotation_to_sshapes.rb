class AddRotationToSshapes < ActiveRecord::Migration[6.0]
  def change
    add_column :shapes, :rotation, :integer
  end
end
