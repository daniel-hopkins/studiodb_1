class ClientsController < ApplicationController

	def index
		list
		render('list')
	end

	def list
		@clients = Client.order("clients.name ASC")
	end

	def show
		@client = Client.find(params[:id])
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(params[:client])
		if @client.save
			# if save succeeds
			flash[:notice] = "client created"
			redirect_to(:action => 'list')
		else
			#if save fails, redisplay form so the user can fix problems
			render('new')
		end
	end

	def edit
		@client = Client.find(params[:id])
	end

	def update
		@client = Client.find(params[:id])
		if @client.update_attributes(params[:client])
			# if update succeeds
			flash[:notice] = "client updated"
			redirect_to(:action => 'list', :id => @client.id)
		else
			#if update fails, redisplay form so the user can fix problems
			render('edit')
		end
	end

	def delete
		@client = Client.find(params[:id])
	end

	def destroy
		Client.find(params[:id]).destroy
		flash[:error] = "client deleted"
		redirect_to(:action => "list")
	end
end
