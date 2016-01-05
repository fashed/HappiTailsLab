class SheltersController < ApplicationController
	def index
		@shelters = Shelter.all
	end

	def show
		@shelter = Shelter.find(params[:id])
		@animals = @shelter.animals.all
		@clients = @shelter.clients.all
	end
end