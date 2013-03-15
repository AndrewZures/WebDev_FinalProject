class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :check_user

  def check_user
  	if User.find_by_id(session[:id]).nil?
  		redirect_to root_url
  	end
  end
end
