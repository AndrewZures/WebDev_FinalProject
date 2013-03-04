class FollowersController < ApplicationController
  def create
  	follower = Follow.new
  	follower.follower_id = session[:id]
  	follower.following_id = params[:id]
  	follower.save
  	redirect_to user_url(session[:id])
  end

  def destroy
  	follower = Follow.where(:follower_id => session[:id], :following_id => params[:id])
  	follower.destroy
  end
end
