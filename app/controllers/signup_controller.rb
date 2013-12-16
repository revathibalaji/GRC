class SignupController < ApplicationController
	layout 'welcome'
	  skip_before_filter :require_user, :except => :destroy
	def new
		@signup = Account.new
	end
	def signup
		@signup = Account.new(params[:signup])
		if @signup.save
			redirect_to root_url
		else
			redirect_to :signup
		end
	end
end
