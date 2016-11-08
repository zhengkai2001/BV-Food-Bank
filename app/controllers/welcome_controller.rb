require 'csv'
class WelcomeController < ApplicationController
  def index
    if request.post? && !params[:donation_date].to_s.empty?
      @name = params[:donor_name]
      if params[:donation_detail_money] == 'None'
        params[:donation_detail_money] == ''
      end

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