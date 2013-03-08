class BoardsController < ApplicationController
  # GET /boards
  # GET /boards.json
  def index
    @boards = Board.where(:user_id => session[:id])
    @user = User.find_by_id(session[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @boards }
    end
  end

  # GET /boards/1
  # GET /boards/1.json
  def show
    @board = Board.find_by_id(params[:id])
    @user = User.find_by_id(session[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @board }
    end
  end

  # GET /boards/new
  # GET /boards/new.json
  def new
    @board = Board.new
    @user = User.find_by_id(session[:id])
    @board.user_id = @user.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @board }
    end
  end

  # GET /boards/1/edit
  def edit
    @board = Board.find(params[:id])
  end

  # POST /boards
  # POST /boards.json
  def create
    @board = Board.new(params[:board])

    respond_to do |format|
      if @board.save
        format.html { redirect_to @board, notice: 'Board was successfully created.' }
        format.json { render json: @board, status: :created, location: @board }
      else
        format.html { render action: "new" }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /boards/1
  # PUT /boards/1.json
  def update
    @board = Board.find(params[:id])

    respond_to do |format|
      if @board.update_attributes(params[:board])
        format.html { redirect_to @board, notice: 'Board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boards/1
  # DELETE /boards/1.json
  def destroy
    @board = Board.find(params[:id])
    
    @board.board_pins.each do |bpin|
      bpin.destroy
    end
    @board.destroy

    respond_to do |format|
      format.html { redirect_to boards_url }
      format.json { head :no_content }
    end
  end

  def create_kitten_board
    @board = Board.new
    @board.name = "Kittens"
    @board.user_id = session[:id]
    @board.save
    
    20.times do 
      height = rand(200..400).to_i
      width = rand(200..400).to_i
      @board.pins.create :user_id => session[:id], :url => "http://placekitten.com/g/#{height}/#{width}"
    end
    redirect_to user_url(session[:id])
  end

    def create_cage_board
    @board = Board.new
    @board.name = "Nick Cage!"
    @board.user_id = session[:id]
    @board.save
    
    20.times do 
      height = rand(200..400).to_i
      width = rand(200..400).to_i
      @board.pins.create :user_id => session[:id], :url => "http://placecage.com/g/#{height}/#{width}"
    end
    redirect_to user_url(session[:id])
  end

end
