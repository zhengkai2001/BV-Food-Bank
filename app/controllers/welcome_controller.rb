

class WelcomeController < ApplicationController
	def index
		require 'csv'
    	@name = params[:donor_name]
    	CSV.open("myfile.csv", "wb") do |csv|
  			csv << ["row", "of", "CSV", "data"]
  			csv << [@name, "row"]
  		end
  	end
end