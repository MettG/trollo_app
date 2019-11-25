class RemoveIndexPriorityOnListsAndTasks < ActiveRecord::Migration[6.0]
	def change
		remove_index :lists, :priority
		remove_index :tasks, :priority
  end
end
