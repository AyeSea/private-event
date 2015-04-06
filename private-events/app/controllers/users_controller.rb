class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = 'Account created!'
			sign_in(@user)
			redirect_to @user
		else
			flash.now[:danger] = 'Could not create account!'
			render 'new'
		end
	end

	def show
	end

	private
		def user_params
			params.require(:user).permit(:name, :email)
		end
end