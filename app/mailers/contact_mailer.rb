class ContactMailer < ActionMailer::Base

	def contact_email(from_email, to_email, name, message)
    @from_email = from_email
    @to_email = to_email
    @name = name
    @body = "Name : " + @name +  "\n" + "Message : " + message #+ @number
    mail(:from => @from_email, :to => @to_email, :subject => 'Contact Information', :body => @body)
  end
end