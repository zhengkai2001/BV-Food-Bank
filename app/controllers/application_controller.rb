class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def index
    @name = params[:donor_name]
  	File.new("data.csv", "w+") do |f|
  		@name.each do |name|
  			f << [name].join(", ") + "\n"
  		end
  	end
  end
end
