class FavoritesController < ApplicationController
  def index
  	@user = User.find_by_id(params[:id])
  end

  def create
  	@user = User.find_by_id(session[:id])
  	@user.favorites.create :board_pin_id => params[:id], :user_id => session[:id]

    @boardpin = BoardPin.find_by_id(params[:id])

    @favboard = @user.boards.find_by_fav(1)
    @favboard.board_pins.create :board_id => @favboard.id, :pin_id => @boardpin.pin_id

  	redirect_to :back
  end

  def destroy
  	@favorite = Favorite.find_by_user_id_and_board_pin_id(session[:id], params[:id])
  	if @favorite
  		@favorite.destroy
    end


  		redirect_to :back
  	end
  end
end
