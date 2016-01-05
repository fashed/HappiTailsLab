class ClientsController < ApplicationController
	def index
		@shelter = Shelter.find(params[:shelter_id])
		@clients = @shelter.clients
	end

	def show
		@shelter = Shelter.find(params[:shelter_id])
		@client = Client.find(params[:id])
	end

	def new
		@shelter = Shelter.find(params[:shelter_id])
		@client = @shelter.clients.new
	end

	def create
		@shelter = Shelter.find(params[:shelter_id])
		@client = @shelter.clients.new(client_params)
		if @client.save
			flash[:notice] = "#{@client.name} has joined #{@shelter.name}"
			redirect_to shelter_clients_path
		else
			flash[:notice] = "Please try again"
			redirect_to new_shelter_client_path
		end
	end

	def client_params
		params.require(:client).permit(:name, :age, :photo)
	end
end