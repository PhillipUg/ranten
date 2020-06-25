class LikesController < ApplicationController

	def create
    @like = current_user.likes.new(rant_id: params[:rant_id])

    if @like.save
      redirect_to rants_path, notice: 'You liked a rant.'
    else
      redirect_to rants_path, alert: 'You cannot like this rant.'
    end
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, rant_id: params[:rant_id])
    if like
      like.destroy
      redirect_to rants_path, alert: 'You disliked a rant.'
    else
      redirect_to rants_path, alert: 'You cannot dislike rant that you did not like before.'
    end
  end
end