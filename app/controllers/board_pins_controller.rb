class BoardPinsController < ApplicationController
  # GET /board_pins
  # GET /board_pins.json
  def index
    @board_pins = BoardPin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @board_pins }
    end
  end

  # GET /board_pins/1
  # GET /board_pins/1.json
  def show
    @board_pin = BoardPin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @board_pin }
    end
  end

  # GET /board_pins/new
  # GET /board_pins/new.json
  def new
    @board_pin = BoardPin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @board_pin }
    end
  end

  # GET /board_pins/1/edit
  def edit
    @board_pin = BoardPin.find(params[:id])
  end

  # POST /board_pins
  # POST /board_pins.json
  def create
    @board_pin = BoardPin.new(params[:board_pin])

    respond_to do |format|
      if @board_pin.save
        format.html { redirect_to @board_pin, notice: 'Board pin was successfully created.' }
        format.json { render json: @board_pin, status: :created, location: @board_pin }
      else
        format.html { render action: "new" }
        format.json { render json: @board_pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /board_pins/1
  # PUT /board_pins/1.json
  def update
    @board_pin = BoardPin.find(params[:id])

    respond_to do |format|
      if @board_pin.update_attributes(params[:board_pin])
        format.html { redirect_to @board_pin, notice: 'Board pin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @board_pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_pins/1
  # DELETE /board_pins/1.json
  def destroy
    @board_pin = BoardPin.find(params[:id])
    @board_pin.destroy

    respond_to do |format|
      format.html { redirect_to board_pins_url }
      format.json { head :no_content }
    end
  end
end
