class ListingsController < ApplicationController

    def index
        render json: Listing.all, status: :ok
    end

    def show
        listing = Listing.find(params[:id])
        render json: listing, status: :ok
    end
    
end
