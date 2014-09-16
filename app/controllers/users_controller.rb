class UsersController < ApplicationController
  
def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  	respond_to do |format|
  if @user.save
  		format.html {redirect_to root_url}
    # , :notice => "Signed up!"
    format.js {render js: "window.location.href = '#{root_url}'"}
  else
    format.js { render :new }
	format.html {render :new }
  end
end
end

private 

def user_params
  params.require(:user).permit(:email, :password, :password_confirmation)
end

end
