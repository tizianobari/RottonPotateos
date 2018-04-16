class UsersController < ApplicationController

 skip_before_action :set_current_user 
 def new 
   #render plain: 'Delivery the form....'
 end 
 def create
    #render plain: 'creating a new user' 
    user_par=params[:user]
    #User.create!(user_par.permit!)
    u=User.create(user_par.permit(:name,:password,:isAdmin))
    redirect_to home_path 
    #render json: u
 end
end
