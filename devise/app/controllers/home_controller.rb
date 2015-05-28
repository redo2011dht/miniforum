class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to :controller => "dashboard", :action => 'index'
  	end
  	if session[:visit_count].nil?
  		session[:visit_count]=1
  	else
  		session[:visit_count]+=1
  	end
  	@visit_count=session[:visit_count]
  end
end
