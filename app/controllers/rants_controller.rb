class RantsController < ApplicationController
  before_action :set_rant, only: %i[destroy]
  before_action :authorize

  def index
    @following_with_count = Following.group('followings.follower_id').count
    @followers_with_count = Following.group('followings.followed_id').count
    @likes = Like.includes(:rant, :user)
    @likes_with_count = Like.group('likes.rant_id').count
    @users = User.includes(:photo_attachment).order('created_at DESC')
    @rants = Rant.includes(:author).order('created_at DESC')
    @followingz = Following.includes(:follower, :followed)
  end

  def new
    @rant = current_user.rants.new
  end

  def create
    @rant = current_user.rants.new(rant_params)

    if @rant.save
      redirect_to rants_url, notice: 'Rant was successfully created.'
    else
      flash[:alert] = "Content can't be blank"
      redirect_to :rants
    end
  end

  def destroy
    @rant.destroy
    redirect_to rants_url, alert: 'Rant deleted!'
  end

  private

  def set_rant
    @rant = Rant.find(params[:id])
  end

  def rant_params
    params.permit(:content)
  end
end
