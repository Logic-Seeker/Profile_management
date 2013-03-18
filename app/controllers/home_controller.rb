class HomeController < ApplicationController

	before_filter :authenticate_user!

  def index
  end

  def edit
		  @user_info = UserInfo.new
  end
end
