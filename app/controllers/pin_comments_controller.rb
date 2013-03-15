class PinCommentsController < ApplicationController
  def create
  	@new_comment = PinComment.create :user_id => session[:id], :comment => params[:comment_text], :pin_id => params[:pin_id]
  	
  	respond_to do |format|
  	  format.js
      format.html # index.html.erb
      format.json { render json: @users }
    end

  end

  def edit
  end

  def destroy
  end
end
