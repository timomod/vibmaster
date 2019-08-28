class PagesController < ApplicationController

	# skip_before_action :authenticate_user!, only: [:home, :j600] 

	def home
	end

	def products
		@articles = Article.all
		@tags = Tag.all
	end

	def j121
	end

	def j160	
	end

	def j600
	end

	def j900
	end


end
