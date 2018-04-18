class ReviewsController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def create
        puts YAML::dump(review_params)
        Review.create!(review_params)

        flash[:notice] = "Review successfully created"
        @movie = Movie.find params[:movie_id]
        #redirect_to movie_path(@movie)
    end

    private
        def review_params 
            #params[:review].permit(:comment, :rating, user: session[:uid], movie: :movie_id)
            parametri = ActionController::Parameters.new(review: { comment: params[:review][:comment], rating: params[:review][:rating], user: session[:uid], movie: params[:movie_id] })
            puts YAML::dump(parametri)
            parametri.require(:review).permit!
            #review_params[:comment] = params[:comment]
            #review_params[:rating] = params[:rating]
            #review_params[:movie] = params[:movie_id]
        end
end
