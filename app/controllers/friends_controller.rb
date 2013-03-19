class FriendsController < ApplicationController

  def new
  end

  def create
    # save friend
    friend = Friend.new
    friend.user_id = session[:id]
    friend.friend_id = params[:id]
    
    
        respond_to do |format|
          if friend.save
            format.js 
            format.html {redirect_to users_url }
            format.json { render json: @users }
          end
      end
  end

  def edit
  end

  def update
  end

  def index
    @friends = Friend.where(:user_id => params[:id])
  end

  def destroy
    @user = User.find_by_id(session[:id])
    friend = @user.friends.find_by_friend_id(params[:id])
    if friend.destroy
        respond_to do |format|
          format.js
          format.html # index.html.erb
          format.json { render json: @users }
        end
    else
        redirect_to :back
    end
  end

  def find_friends
    @users = User.all
  end
end
