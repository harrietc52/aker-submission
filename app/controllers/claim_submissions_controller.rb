class ClaimSubmissionsController < ApplicationController
	def index
		@contact = Contact.all
	end

 	def show
 		email = params[:email]
		puts email
		
 	end
end
