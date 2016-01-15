class Animal < ActiveRecord::Base
  belongs_to :shelter
  belongs_to :client

	def owner
		if self.client
			self.client.name
		elsif self.shelter
			self.shelter.name
		else
			"I'm orphaned"
		end
	end

end

