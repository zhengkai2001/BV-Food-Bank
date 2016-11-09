require 'rails_helper'
require 'pp'

describe WelcomeController do
  describe "POST #index" do
    context 'when the form is fulfilled' do
      it "saves the donation's and donor's information in .csv file" do
        post 'index', :data => {
            donation_date: '10/31/2016',
            donation_product: 'Food',
            donation_detail_food: 'OREO',
            donation_detail_money: 'None',
            donation_total: '100',
            donation_total_unit: 'Pounds',
            donor_name: 'Eric',
            donor_address: '1601 Holleman Dr.',
            donor_city: 'College Station',
            donor_state: 'Texas',
            donor_zip: '77840',
            donor_email: 'eric@tamu.edu'
        }

        expect(response).to be_success
      end
    end
  end
end