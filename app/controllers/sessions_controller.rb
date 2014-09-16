class SessionsController < ApplicationController
  
def new
end

def create
  user = User.authenticate(params[:email], params[:password])
  respond_to do |format|
  if user
    session[:user_id] = user.id
    format.html {redirect_to root_url}
    # , :notice => "Logged in!"
    format.js {render js: "window.location.href = '#{root_url}'"}
  else
    flash.now.alert = "Invalid email or password"
    format.js { render :new }
    format.html {render :new }
  end
end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end

end
