class ListingsController < ApplicationController
    skip_before_action :authorize

    def index
        render json: Listing.all, status: :ok
    end

    def show
        listing = Listing.find(params[:id])
        render json: listing, status: :ok
    end

    def create
        listing = Listing.create!(listing_params)
        render json: listing, status: :created
    end

    private

    def listing_params
        params.permit(:title, :address, :city, :bedroom, :bathroom, :description, :amenities, :price, :duration, :image)
    end
    



end
