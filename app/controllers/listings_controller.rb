class ListingsController < ApplicationController
    skip_before_action :authorize

    def index
        render json: Listing.all, status: :ok
    end

    def show
        listing = Listing.find(params[:id])
        render json: listing, status: :ok
    end
    
    
end
