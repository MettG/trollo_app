class AddIndexToList < ActiveRecord::Migration[6.0]
	def change
		add_index :lists, :priority, unique: true
		add_index :tasks, :priority, unique: true
  end
end
