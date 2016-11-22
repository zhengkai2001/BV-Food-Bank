# Load the Rails application.
require File.expand_path('../application', __FILE__)
ActionMailer::Base.smtp_settings = {
  :user_name => 'app58916837@heroku.com',
  :password => 'zjh19920817',
  :domain => 'https://fast-chamber-54336.herokuapp.com/',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
# Initialize the Rails application.
Rails.application.initialize!
