class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authorize, except: %i[new create]

  # GET /users
  def index
    @users = User.all.order('created_at DESC')
  end

  # GET /users/1
  def show
    @followed_users = @user.followed_users
    @users_following = @user.users_following
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit; end

  def follow
    @following = Following.new(follower_id: current_user.id, followed_id: params[:user_id])
    @following.save
    redirect_to user_path(params[:user_id]), notice: 'Started following'
  end

  def unfollow
    @following = Following.find_by(follower_id: current_user.id, followed_id: params[:user_id])
    @following.destroy
    redirect_to user_path(params[:user_id]), notice: 'Unfollowed User'
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to rants_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:username, :full_name, :photo, :cover_image)
  end
end
