class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:username])

    if user
      session[:user_id] = user.id
      redirect_to rants_path, notice: 'Successfully Logged In'
    else
      flash.now.alert = 'Incorrect Username. Try again.'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end
end
