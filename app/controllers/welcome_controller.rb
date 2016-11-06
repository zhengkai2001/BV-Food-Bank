
require "csv"

class WelcomeController < ApplicationController
	def index
    	@name = params[:donor_name]
    	require "csv"
    	CSV.open("myfile.csv", "wb") do |csv|
  			csv << ["row", "of", "CSV", "data"]
  			csv << [@name, "row"]
  		end
  	end
end