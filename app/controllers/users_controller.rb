class UsersController < ApplicationController
  before_action :set_user, only: %i[show]
  before_action :authorize, except: %i[new create]

  def show
    @users = User.includes(:photo_attachment).order('created_at DESC')
    @following_with_count = Following.group('followings.follower_id').count
    @followers_with_count = Following.group('followings.followed_id').count
    @followingz = Following.includes(:follower, :followed)
  end

  def new
    @user = User.new
  end

  def follow
    @following = Following.new(follower_id: current_user.id, followed_id: params[:user_id])
    @following.save
    redirect_to user_path(params[:user_id]), notice: 'Started following'
  end

  def unfollow
    @following = Following.find_by(follower_id: current_user.id, followed_id: params[:user_id])
    @following.destroy
    redirect_to user_path(params[:user_id]), alert: 'Unfollowed User'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to rants_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :full_name, :photo, :cover_image)
  end
end
