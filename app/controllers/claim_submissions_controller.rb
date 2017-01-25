class ClaimSubmissionsController < ApplicationController
	def index
		@contacts = Contact.all
	end

 	def show
 		email = params[:email]
		puts email
 	end
end
