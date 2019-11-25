class List < ApplicationRecord
	belongs_to :board
	has_many :tasks, dependent: :destroy
	attr_accessor :sorted
	def sort_tasks
		tasks = self.tasks.all
		
		while true
			n = 0
			changed = false
			until n == tasks.length - 1
				if tasks[n].priority > tasks[n+1].priority || 
					 (tasks[n].priority == tasks[n+1].priority && tasks[n].id < tasks[n+1].id)
					temp = tasks[n]
					tasks[n] = tasks[n+1]
					tasks[n+1] = temp
					changed = true
				end
				n+=1
			end
			unless changed
				break;
			end
		end
		@sorted = tasks
		self.tasks = @sorted
		self.save
	end
	
	def move_up_task(task)
		i = 0
		until i == self.tasks.length - 1
			if self.tasks[i].id == task.id
				puts "Task found, transfering prio!"
				self.tasks[i-1].switch_prio(task)
				self.save
				break
			end
			i+=1
		end
	end
end
