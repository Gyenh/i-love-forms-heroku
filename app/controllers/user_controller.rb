class UserController < ApplicationController
	def new
	end

	def create

################# Pour les méthodes form_tag et form ###############
	  @user = User.new('username' => params[:username],
	                   'email' => params[:email],
	                   'bio' => params[:bio])

	  if @user.save
	    redirect_to user_path(params[:username])
	  else
	    render '/user/errorpage'
      end

################# Activer cette méthode pour que la form_for fonctionne ###############
   	  # @user = User.new
	  # @user.username = params["user"]["username"]
	  # @user.bio = params["user"]["bio"]
	  # @user.email = params["user"]["email"]

	  #   if @user.save
	  #     redirect_to user_path(params["user"][:username])
	  #   else
	  #     render '/user/errorpage'
	  #   end
	  
	end

	def show
    @user = if params[:username].to_i.zero?
              User.find_by(username: params[:username])
            else
              User.find(params[:username])
            end
  end

end
