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
      render json: house.errors, status: :unprocessable_entity
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
    favorite_house = user_fav(current_user, house.id)
    if house
      render json: {
        house: house,
        url: url_for(house.image),
        favorite: favorite_house
      }
    else
      render json: house.errors, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.permit(:title, :description, :rent, :image)
  end
end
