class HousesController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_and_set_user

  def create
    house = House.create!(post_params)

    if house
      render json: {
        status: :created,
        image_url: house.url
      }
    else
      render json: house.errors, status: :unprocessable_entity
    end
  end

  def index
    render json: {
      house: House.all,
      urls: House.pluck(:url)
    }
  end

  def show
    house = House.find(params[:id])

    if house
      render json: {
        house: house,
        url: house.image.service_url
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
