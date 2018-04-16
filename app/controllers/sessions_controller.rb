class SessionsController < ApplicationController

 skip_before_action :set_current_user
 def create
   user = User.find_by(name: params[:user][:name])
   if user
     session[:uid] = user.id
     redirect_to movies_path
   else
     redirect_to login_path 
   end
 end

 def destroy 

  session.delete(:uid)
  redirect_to home_path

 end

end
