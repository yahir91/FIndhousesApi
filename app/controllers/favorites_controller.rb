class FavoritesController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_and_set_user

  def create
    favorite = current_user.favorites.create!(house_id: params['house']['id'])

    if favorite
      render json: {
        status: :created
      }
    else
      render json: favorite.errors, status: :unprocessable_entity
    end
  end

  def index
    fav_urls = current_user.houses.pluck(:url)
    if current_user
      render json: {
        favorites_houses: current_user.houses,
        favorite_urls: fav_urls,
        user: current_user
      }
    else
      render json: {
        status: 'no user'
      }
    end
  end

  def show
    render json: {
      favorite: Favorite.fav_toogle(current_user, params[:id]).first
    }
  end

  def destroy
    favorite = current_user.favorites.user_favorites(params[:id]).first
    if favorite

      favorite.delete
      render json: {
        status: 'deleted'
      }
    else
      render json: favorite.errors, status: :unprocessable_entity
    end
  end
end
