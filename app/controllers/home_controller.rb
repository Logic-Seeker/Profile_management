class HomeController < ApplicationController

	before_filter :authenticate_user!

  def index
		  @user_info = UserInfo.find_by_user_id(current_user.id)
  end
  def new
		  @user_info = UserInfo.new(params[:user_info])
		  @user_info.user_id = current_user.id
			if @user_info.save
				render 'index.html.erb'
			else
				flash[:error]=@user_info.errors.full_messages
				render 'create.html.erb'
			end

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
		  if @user_info.save
				render 'index.html.erb'
			else
				flash[:error]=@user_info.errors.full_messages
				render 'edit.html.erb'
			end
  end
end
