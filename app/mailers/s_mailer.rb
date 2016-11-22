class SMailer < ApplicationMailer
include SendGrid 
	default from: "zjh08177@gmail.com", return_path: "zjh08177@gmail.com"
	layout 'mailer' 
	def sendemail(email)
		mail(to: email, subject: "Thank you for your donation")
	end
end
