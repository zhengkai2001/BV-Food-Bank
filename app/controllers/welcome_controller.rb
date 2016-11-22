
require 'csv'
require 'sendgrid-ruby'
include SendGrid
class WelcomeController < ApplicationController
	def index
        @email = params[:donor_email]
        
        SMailer.sendemail(@email).deliver_now

    	@name = params[:donor_name]
    	if params[:dnation_detail_money] == "None"
            params[:donation_detail_money] == ""
        end
    	if !File.file?("DonationInfo_#{Date.today}.csv")
    		CSV.open("DonationInfo_#{Date.today}.csv", "wb") do |csv|
				csv << ["Donation's information"]
    			csv << ["Date", "Product of Donate", "Details of Food", "Details of Money", "Total", "Unit", "Name of Origination/Individual", "Address", "City", "State", "Zip", "Email"]	
    		end
    	end
    	CSV.open("DonationInfo_#{Date.today}.csv", "a+") do |csv|
    		csv << [params[:donation_date], params[:donation_product], params[:donation_detail_food], params[:donation_detail_money], params[:donation_total], params[:donation_total_unit], params[:donor_name], params[:donor_address], params[:donor_city], params[:donor_state], params[:donor_zip], params[:donor_email]]
    	end



data = JSON.parse('{
  "personalizations": [
    {
      "to": [
        {
          "email": "zjh08177@tamu.edu"
        }
      ],
      "subject": "Thank you for donation!"
    }
  ],
  "from": {
    "email": "zjh08177@gmail.com"
  },
  "content": [
    {
      "type": "text/plain",
      "value": "Thanks"
    }
  ]
}')
sg = SendGrid::API.new(api_key: "eric")
response = sg.client.mail._("send").post(request_body: data)
puts response.status_code
puts response.body
puts response.headers

  	end
end