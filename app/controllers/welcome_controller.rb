require 'csv'
require 'sendgrid-ruby'
include SendGrid
class WelcomeController < ApplicationController
  def index
    if request.post? && !params[:donation_date].to_s.empty?
      @name = params[:donor_name]
      if params[:donation_detail_money] == 'None'
        params[:donation_detail_money] == ''
      end

      @email = params[:donor_email]
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

      file_name = "DonationInfo_#{Date.today}.csv"

      unless File.file?(file_name)
        CSV.open(file_name, 'wb') do |csv|
          csv << ["Donation's information"]
          csv << ['Date', 'Product of Donate', 'Details of Food', 'Details of Money', 'Total', 'Unit', 'Name of Origination/Individual', 'Address', 'City', 'State', 'Zip', 'Email']
        end
      end

      CSV.open(file_name, 'a+') do |csv|
        csv << [params[:donation_date], params[:donation_product], params[:donation_detail_food], params[:donation_detail_money], params[:donation_total], params[:donation_total_unit], params[:donor_name], params[:donor_address], params[:donor_city], params[:donor_state], params[:donor_zip], params[:donor_email]]
      end
    end
  end
end