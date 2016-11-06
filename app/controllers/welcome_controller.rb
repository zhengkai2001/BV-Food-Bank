
require 'csv'
class WelcomeController < ApplicationController
	def index
    	@name = params[:donor_name]
    	

    	CSV.open("thisfiles.csv", "a+") do |csv|
    		csv << [@name, "cccc"]
    	end
  	end
end