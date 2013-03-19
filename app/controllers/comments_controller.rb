class CommentsController < ApplicationController

	def index
		@board = Board.find_by_id(params[:board_id])
		@commentable = find_commentable
		@comments = @commentable.comments
	end


	def find_commentable
	  params.each do |name, value|
	    if name =~ /(.+)_id$/
	      return $1.classify.constantize.find(value)
	    end
	  end
	  nil
	end

	def create
	  @commentable = find_commentable
	  @comment = @commentable.comments.build(params[:comment])
	  @comment.user_id = session[:id]
	  if @comment.save
	    flash[:notice] = "Successfully saved comment."
	    redirect_to :id => nil
	  else
	    render :action => 'new'
	  end
	end


end
