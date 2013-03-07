class SessionsController < ApplicationController

	def new
		#show sign in form
	end

	def destroy
		reset_session
		redirect_to root_url
	end

	def create
		#see if you can find user with given username
		user = User.find_by_name(params[:name]);
		if user.present?
			#if user found authentiate password entry
			if user.authenticate(params[:password])
				session[:id] = user.id
			end
		end
		redirect_to user_url(session[:id])
	end
end
