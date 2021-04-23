class FavoritesController < ApplicationController
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
    if @current_user
      render json: {
        favorites_houses: current_user.houses,
        favorite_urls: current_user.houses.map { |house| url_for(house.image) },
        user: current_user
      }
    else
      render json: {
        status: 'no user'
      }
    end
  end

  def destroy
    favorite = @current_user.favorites.find_by(house_id: params[:id])
    return unless favorite.nil?

    favorite.delete
    render json: {
      status: 'deleted'
    }
  end
end
