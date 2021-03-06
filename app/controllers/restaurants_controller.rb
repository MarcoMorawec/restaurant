class RestaurantsController < ApplicationController

	def index
		@restaurant = Restaurant.order("created_at DESC")
	end


	def new
		@restaurant = Restaurant.new(params[:restaurant])		
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end


	def create
		@restaurant = Restaurant.create(params[:restaurant])
			if @restaurant.save
				flash[:notice] = "We saved your restaurant entry"
				redirect_to(:action => 'index')
			else
				render ('new')
			end
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		if @restaurant.update_attributes(params[:restaurant])
			flash[:notice] = "We updated your entry"
			redirect_to(:action => 'index')
		else
			flash[:notice] = "Something went terribly wrong and we couldn't update your entry"
			render ('update')
		end
	end

	def destroy
		@restaurant = Restaurant.find(params[:id]).destroy
		flash[:notice] = "You entry has been deleted"
		redirect_to(:action => 'index')
	end


end
