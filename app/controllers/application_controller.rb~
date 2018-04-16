class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user

  def set_current_user
   #byebug 
   @current_user = @current_user || User.find_by(id: session[:uid])

   redirect_to home_path and return unless @current_user
  end
end
