ActionMailer::Base.smtp_settings = {
:address => 'smtp.sendgrid.net',
:port => '587',
:authentication => :plain,
:user_name => 'app58916837@heroku.com',
:password => 'zjh19920817',
:domain => 'heroku.com'
}
ActionMailer::Base.delivery_method = :smtp