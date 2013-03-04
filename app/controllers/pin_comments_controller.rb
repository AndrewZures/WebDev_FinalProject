class PinCommentsController < ApplicationController
  def create
  	@new_comment = PinComment.create :user_id => session[:id], :comment => params[:comment_text], :pin_id => params[:pin_id]
  	redirect_to :back
  end

  def edit
  end

  def destroy
  end
end
