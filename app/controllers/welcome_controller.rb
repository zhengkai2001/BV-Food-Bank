
require 'csv'

class WelcomeController < ApplicationController
	def index
    	@name = params[:donor_name]
    	require 'csv'
		CSV.open("myfile.csv", "wb") do |csv|
				csv << ["row", "of", "CSV", "data"]
				csv << ["another", "row"]
		end

  		File.new("hahaha.csv", "w") do |f|
  			f << ["row", "of", "CSV", "data"].join(", ") + "\n"
  		end
  	end
end