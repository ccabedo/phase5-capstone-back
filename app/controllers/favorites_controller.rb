class FavoritesController < ApplicationController

    def index
        render json: Favorite.all, status: :ok
    end
    
end
