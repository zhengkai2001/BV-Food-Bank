require 'csv'

class Donor < ActiveRecord::Base

	CSV.open("myfile.csv", "wb") do |csv|
				csv << ["row", "of", "CSV", "data"]
				csv << ["another", "row"]
		end
end
