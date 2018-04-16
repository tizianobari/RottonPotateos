class HomeController < ApplicationController

 skip_before_action :set_current_user
 def welcome
   #render plain: 'WELCOME TO ROTTEN POTATOES'
 end
 def login

 end
end
