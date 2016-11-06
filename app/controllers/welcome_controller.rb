class WelcomeController < ApplicationController
	def index
    	@name = params[:donor_name]
  		File.new("data.csv", "w+") do |f|
  			@name.each do |name|
  				f << [name].join(", ") + "\n"
  			end
  		end
  	end
end