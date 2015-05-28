class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		session[:user]=current_user.email
  		@user=session[:user]
  	end
  end
end
