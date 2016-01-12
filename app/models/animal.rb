class Animal < ActiveRecord::Base
  belongs_to :shelter
  has_one :client

	def owner
		if self.shelter
			shelter.name
		else
			self.client.name
		end
	end

end

