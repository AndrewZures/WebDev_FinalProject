class UsersController < ApplicationController
  # GET /users
  # GET /users.json

  before_filter :sanitize_user, :except => [:introduction]
  before_filter :sanitize_session, :except => [:introduction]
  before_filter :authorize_user, :except => [:index, :new, :create, :introduction, :show];
  

  def sanitize_user

    #check if user number exists
    if params[:id]
        @user = User.find_by_id(params[:id])
        if @user.nil?
          redirect_to introduction_url, notice: "Nice Try"
        end
    end
  end

  def sanitize_session

     #check to see if session number is still valid
     if session[:id]
        @session_user = User.find_by_id(session[:id])
        if @session_user.nil?
          redirect_to introduction_url, notice: "Nice Try"
        end
     end
  end

  def authorize_user
    @user = User.find_by_id(params[:id])
    if session[:id].nil? || @user.nil? || @user.id != session[:id]
      redirect_to root_url, notice: "Nice Try"
    end
  end

  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show

      #determine of viewer is same as user
       @user = User.find_by_id(params[:id])
      if params[:id].to_i != session[:id].to_i
        @viewer = User.find_by_id(session[:id])
      end

      #sorting options
      if params[:sort] == 'random'
        @user_board_pins = @user.board_pins.shuffle
      elsif params[:sort] == "newest"
        @user_board_pins = @user.board_pins.order('created_at desc')
      elsif params[:sort] == "oldest"
        @user_board_pins = @user.board_pins.order('created_at asc')
      else
        @user_board_pins = @user.board_pins
      end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    #authorization makes user call redundant
    # must have correct @user or else wont
    # even make it this far
    @user = User.find(session[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        session[:id] = @user.id
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

def introduction
end

end
