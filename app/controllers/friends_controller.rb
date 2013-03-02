class FriendsController < ApplicationController

  def new
  end

  def create
    # save friend
    friend = Friend.new
    friend.user_id = session[:id]
    friend.friend_id = params[:id]
    if friend.save
      redirect_to find_friends_url, :notice => "Friend Saved Successfully"
    else
      redirect_to find_friends_url, :notice => "Failure"
    end
  end

  def edit
  end

  def update
  end

  def index
    @friends = Friend.where(:user_id => session[:id])
  end

  def destroy
  end

  def find_friends
    @users = User.all
  end
end
