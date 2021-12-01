class AvatarsController < ApplicationController
  @user = User.find(params[:user_id])
  @user.avatar.attach(params[:avatar])
  redirect_to(user_path(@user))
end
