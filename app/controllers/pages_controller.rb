class PagesController < ApplicationController

	# skip_before_action :authenticate_user!, only: [:home, :j600] 

	
	def home
		@articles_promoted = Article.where(promoted: true).order(created_at: :desc).limit(3)
	end

	def portable
	end

	def rd	
	end

	def testing
	end




end
