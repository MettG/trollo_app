class Task < ApplicationRecord
	belongs_to :list
	belongs_to :user, optional: true

	def switch_prio(task)
		puts task.id, self.id
		temp = task.priority
		task.set_prio(self.priority)
		set_prio(temp)
	end

	def set_prio(n)
		puts "Setting this task #{self.id}'s prio #{self.priority} to #{n}"
		self.priority = n
		self.save
	end

end
