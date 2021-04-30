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
      render json: { status: 500 }
    end
  end

  def index
    fav_urls = image_urls(current_user)
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

  def destroy
    favorite = favorites_houses(current_user, params[:id])
    if favorite

      favorite.delete
      render json: {
        status: 'deleted'
      }
    else
      render json: { status: 500 }
    end
  end
end
