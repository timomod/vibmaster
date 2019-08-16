class PagesController < ApplicationController

	# skip_before_action :authenticate_user!, only: [:home, :j600] 

	def home
	end

	def products
	end

	def j121
	end

	def j160	
	end

	def j600
	end

	def j900
	end

	def index
		@pages = Page.all
	end

	def show
		@page = Pages.find(params[:id])
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
