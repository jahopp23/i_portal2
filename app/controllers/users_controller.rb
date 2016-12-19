class UsersController < ApplicationController
    
  def main
  end
  
  
  def create
    user = User.new(user_params)
    	if user.save 
  	 	  session[:user_id] = user.id
  		  redirect_to '/images/index'
  	  else
  		 flash[:register_errors] = user.errors.full_messages
  		 redirect_to '/'
  	 end
  end

  
  private
  
  def user_params
            params.require(:user).permit(:alias, :password)
  end
  
end
