require 'action_text'

class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :authenticate_user!

	helper ActionText::Engine.helpers
end
