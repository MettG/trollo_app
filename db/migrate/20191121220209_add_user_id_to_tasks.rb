class AddUserIdToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :user_id, :bigint, null: true
  end
end
