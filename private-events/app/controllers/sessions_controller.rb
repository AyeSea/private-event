class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(name: params[:session][:name])
  	if user
  		sign_in(user)
  		redirect_to user
  	else
  		flash.now[:danger] = 'That user does not exist!'
  		render 'new'
  	end
  end
end
