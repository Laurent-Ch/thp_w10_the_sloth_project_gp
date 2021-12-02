class HomeController < ApplicationController

  def index
    @users = User.all
    @tags = Tag.all
  end

end
