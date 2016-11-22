class SMailer < ActionMailer::Base
	default from: "zjh08177@gmail.com"
	layout 'mailer' 
	def send_email(email, email_body)
		mail(to: email, body: email_body, content_type: "text/html", subject: "Thank you for your donation")
	end
end
