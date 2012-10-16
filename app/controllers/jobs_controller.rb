class JobsController < ApplicationController

	def index
		list
		render('list')
	end

	def list
		@jobs = Job.order("jobs.date DESC")
	end

	def show
		@job = Job.find(params[:id])
	end

	def new
		@job = Job.new
	end

	def delete
	end
end
