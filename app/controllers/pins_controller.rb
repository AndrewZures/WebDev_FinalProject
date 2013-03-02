class PinsController < ApplicationController
  # GET /pins
  # GET /pins.json
  def index
    @pins = Pin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pins }
    end
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
    @pin = Pin.find_by_id(params[:id])
    @user = User.find_by_id(session[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pin }
    end
  end

  # GET /pins/new
  # GET /pins/new.json
  def new
    @boards = Board.where(:user_id => session[:id])
    @current_board = Board.find_by_id(params[:board_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pin }
    end
  end

  # GET /pins/1/edit
  def edit
    @pin = Pin.find(params[:id])
  end

  # POST /pins
  # POST /pins.json
  def create
    @board = Board.find_by_id(params[:post][:board_id])
    bool = @board.pins.create :url => params[:url], :user_id => session[:id], :description => params[:description]
    if bool
      redirect_to board_url(params[:post][:board_id])
    else
      redirect_to user_url(session[:id], notice: 'Failed')
    end


    #@pin doesn't have an ID until after save
    

    

  end

  # PUT /pins/1
  # PUT /pins/1.json
  def update
    @pin = Pin.find(params[:id])

    respond_to do |format|
      if @pin.update_attributes(params[:pin])
        format.html { redirect_to @pin, notice: 'Pin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy

    respond_to do |format|
      format.html { redirect_to pins_url }
      format.json { head :no_content }
    end
  end
end
