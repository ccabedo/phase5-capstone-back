class ReviewsController < ApplicationController
    skip_before_action :authorize


    def index
        render json: Reviews.all, status: :ok
    end
    
end
