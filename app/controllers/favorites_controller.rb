class FavoritesController < ApplicationController

    before_action :get_favorite, only: [:show]

    def index
        favorites = Favorite.all 
    end

    def show
    end

    def new
        favorite = Favorite.new
        render :json => favorite
    end

    def create
        favorite = Favorite.find_or_create_by(favorite_params)
        if favorite.valid?
            render :json => favorite
        end
    end

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :organism_id)
    end

    def get_favorite
        favorite = Favorites.find(params[:id])
    end
end
