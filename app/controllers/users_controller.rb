class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		if @user.save
			@user = User.new(user_params)
			session[:user_id] = @user.id
			redirect_to '/'
		else
			redirect_to '/signup'
		end
	end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end
end
