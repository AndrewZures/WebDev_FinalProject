class FollowersController < ApplicationController

  def create
      follower = Follow.new
      follower.user_id = session[:id]
      follower.board_id = params[:id]

      follower.save

      redirect_to :back
  end

  def destroy
  	follower = Follow.find_by_user_id_and_board_id(session[:id], params[:id])
    if follower
  	   follower.destroy
       redirect_to :back
     end
  end

  def index
    @user = User.find_by_id(params[:id])
  end
end
