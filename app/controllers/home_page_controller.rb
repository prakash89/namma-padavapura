class HomePageController < ApplicationController
  def new
  end

  def email_contact
    @name = params[:contact][:name]
    @email = params[:contact][:email]
    @number = params[:contact][:number]
    @message = params[:contact][:message]
    @to_email = "plingaiah@qwinixtech.com"
      ContactMailer.contact_email(@email, @to_email, @name, @number, @message).deliver
      flash[:notice] = "The Contact Information has been sent"
      redirect_to root_url
  end
  def contact
  end
end
