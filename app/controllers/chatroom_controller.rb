class ChatroomController < ApplicationController
	def index
		@messages = Message.all
	end
	
	def new
	end
	
	def show
	end
end