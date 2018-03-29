class MoviesController < ApplicationController


 skip_before_action :verify_authenticity_token


 def index
   #render html: 'ciao io sono index'
   @movies=Movie.all
   logger.debug('A log message....')
 end
 
 def show
   @movie = Movie.find(params[:id]) 
   #render html: 'ciao io sono show'+@movie.to_s
   #render json: @movie
 end

 def edit 
    @movie=Movie.find(params[:id])
 end
  
 def new 
   #render plain: 'ciao io sono new'
 end
 
 def create 
   #render html: 'ciao io sono create'
   #render plain: params[:movie]
   #Movie.create!(params) 
   Movie.create!(movie_params) 
   flash[:notice]="Movie successfully created"
   redirect_to movies_path
 end

 def update
   #i = params[:id] 
   #render html: 'ciao io sono update   '+i.to_s
   @movie = Movie.find params[:id]
   @movie.update_attributes!(movie_params)
   #@movie.update_attributes!(params[:movie].permit!)
   flash[:notice] = "Movie has been updated"
   redirect_to movie_path(@movie)
 end

 def destroy 
   #i = params[:id] 
   #render html: 'ciao io sono destroy   '+i.to_s
   @movie=Movie.find(params[:id])
   @movie.destroy
   flash[:notice] = "Movie has been destroyed"
   redirect_to movies_path
 end

 private
 def movie_params
   params[:movie].permit!
   #params[:movie].permit(:title,:release_date)
 end
end
