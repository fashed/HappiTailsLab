class AnimalsController < ApplicationController
	def index
		@shelter =  Shelter.find(params[:shelter_id])
		@animals = @shelter.animals
	end

	def show
		@shelter = Shelter.find(params[:shelter_id])
		@animal= Animal.find(params[:id])
	end

	def new
		@shelter = Shelter.find(params[:shelter_id])
		@animal = @shelter.animals.new
	end

	def create
		@shelter = Shelter.find(params[:shelter_id])
		@animal = @shelter.animals.new(animal_params)
		if @animal.save
			flash[:notice] = "#{@animal.name} has joined #{@shelter.name}"
			redirect_to shelter_animals_path
		else
			flash[:notice] = "Please try again"
			redirect_to new_shelter_animal_path
		end
	end

	def animal_params
		params.require(:animal).permit(:name, :species, :photo)
	end

	def adopt
		@shelter = Shelter.find(params[:shelter_id])
		@animal= Animal.find(params[:animal_id])
		@clients = @shelter.clients
	end

	def donate
		@shelter = Shelter.find(params[:shelter_id])
		@animal= Animal.find(params[:animal_id])
	end

end