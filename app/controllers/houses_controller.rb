class HousesController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_and_set_user

  def create
    house = House.create!(post_params)

    if house
      render json: {
        status: :created,
        image_url: url_for(house.image)
      }
    else
      render json: { status: 500 }
    end
  end

  def index
    houses_urls = houses_urls()
    render json: {
      house: House.all,
      urls: houses_urls
    }
  end

  def show
    house = House.find(params[:id])
    if house

      render json: {
        house: house,
        url: url_for(house.image),
        favorite: Favorite.where(user_id: current_user, house_id: house.id).first
      }
    else
      render json: { status: 500 }
    end
  end

  private

  def post_params
    params.permit(:title, :description, :rent, :image)
  end
end
