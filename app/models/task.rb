class Task < ApplicationRecord
	belongs_to :list
	belongs_to :user, optional: true

	def increase_prio
		p = self.priority
		self.update(priority: p + 1)
	end
	def decrease_prio
		p = self.priority
		self.update(priority: p - 1)
	end

end
