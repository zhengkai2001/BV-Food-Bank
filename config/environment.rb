# Load the Rails application.
require File.expand_path('../application', __FILE__)
ActionMailer::Base.default_url_options = { :host => 'fast-chamber-54336.herokuapp.com' }

ActionMailer::Base.smtp_settings = {
  :user_name => 'app58916837@heroku.com',
  :password => 'rruueqkt4751',
  :domain => 'heroku.com',
  :address => 'smtp.sendgrid.net',
  :port => 25,
  :authentication => :plain,
  :enable_starttls_auto => true
}
# Initialize the Rails application.
Rails.application.initialize!
