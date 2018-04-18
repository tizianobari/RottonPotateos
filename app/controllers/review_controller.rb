class ReviewController < ApplicationController
 skip_before_action :verify_authenticity_token
	def new 
		render plain: 'test'
	end

end
