class List < ApplicationRecord
	belongs_to :board
	has_many :tasks, dependent: :destroy

	def sort_tasks
		tasks = Task.find_by_sql("
			SELECT * FROM tasks WHERE list_id = #{self.id} ORDER BY priority ASC
			")
		tasks
	end
	
	def move_up_task(task)

		self.tasks.each do |t|
			if t.priority == task.priority - 1
				puts " Task prio is one less! #{t.priority} < #{task.priority}"
				t.increase_prio
				task.decrease_prio
				break
			end
		end

	end
end
