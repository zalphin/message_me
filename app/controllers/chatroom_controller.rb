class ChatroomController < ApplicationController
	before_action :require_user
	
	def index
		@message = Message.new
		@messages = Message.custom_display
	end
	
	def new
	end
	
	def show
	end

end