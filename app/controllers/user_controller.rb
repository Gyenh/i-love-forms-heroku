class UserController < ApplicationController
	def new
	end

	def create

	  @user = User.new('username' => params[:username],
	                   'email' => params[:email],
	                   'bio' => params[:bio])

	  if @user.save
	    redirect_to user_path(params[:username])
	  else
	    render '/user/errorpage'
      end
	  
	end

	def show
    @user = if params[:username].to_i.zero?
              User.find_by(username: params[:username])
            else
              User.find(params[:username])
            end
  end

end
