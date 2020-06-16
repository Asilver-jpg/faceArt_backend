class ChangeUserIdToBeIntegerInProjects < ActiveRecord::Migration[6.0]
  def change
    change_column :projects, :user_id, :integer
  end
end
