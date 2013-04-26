class NotificationsController < ApplicationController

  def destroy
    @notification = Notification.find(params[:id])
    @user = User.find(@notification.follower_id) # needed for redirect
    @notification.destroy
    redirect_to @user
  end

end
