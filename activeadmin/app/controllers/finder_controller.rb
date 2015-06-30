class FinderController < ApplicationController
	def index
		@page_title="All customers"
		@customers=Customer.all
	end

	def missing_email
		@page_title="Customers missing email"
		@customers=Customer.where(email_address: '')
		render :index
	end

	def alphabetized
		@page_title="Custumers ordered by first name"
		@customers=Customer.order(:full_name)
		render :index
	end
end
