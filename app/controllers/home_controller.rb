class HomeController < ApplicationController

	before_filter :authenticate_user!

  def index
		  @user_info = UserInfo.find_by_user_id(current_user.id)
  end
  def new
		  @userinfo = UserInfo.new(params[:user_info])
		  @userinfo.user_id = current_user.id
		  @userinfo.save!
		  render 'index.html.erb'
  end	  
  def edit
		  @user_info = UserInfo.find_by_user_id(current_user.id)
  end
		
  def create	
		@user_info = UserInfo.new
  end
  def update
		 @user_info = UserInfo.find_by_user_id(current_user.id)
		  @user_info.attributes = params[:user_info]
		  @user_info.save!
		  render 'index.html.erb'
  end
end
