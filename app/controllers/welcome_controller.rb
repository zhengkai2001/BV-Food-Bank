class WelcomeController < ApplicationController
	def index
    	@name = params[:donor_name]
    	
  	end
end