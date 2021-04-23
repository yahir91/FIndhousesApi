class HousesController < ApplicationController
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
    render json: {
      house: House.all,
      urls: House.all.map { |house| url_for(house.image) }
    }
  end

  def show
    house = House.find(params[:id])
    return unless house.nil?

    render json: {
      house: house,
      url: url_for(house.image),
      favorite: Favorite.where(user_id: current_user, house_id: house.id).first
    }
  end

  private

  def post_params
    params.permit(:title, :description, :rent, :image)
  end
end
