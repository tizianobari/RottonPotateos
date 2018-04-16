Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :movies
 resources :users

 get '/' => 'home#welcome', :as=>'home' 
 get '/login' => 'home#login', :as=>'login' 
 post '/create' => 'sessions#create', :as=>'session' 
 get '/logout' => 'sessions#destroy', :as=>'logout'

end
