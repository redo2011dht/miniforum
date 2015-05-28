class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
	@visit_count=session[:visit_count]
  end
end
