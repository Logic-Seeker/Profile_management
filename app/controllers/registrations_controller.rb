class Users::RegistrationsController < Devise::RegistrationsController
  def create
		      super
			      @user.build_user_info
				      @user.user_profile.some_data = 'abcd'
					      @user.save!
						    end
  end
