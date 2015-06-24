class FinderController < ApplicationController
	def index
		@customers=Customer.all
	end

	def missing_email
		
	end
	def alphabetized
		
	end
end
