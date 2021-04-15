class HousesController < ApplicationController
    def create
        @house = House.create(post_params())
    end

    private def post_params
        params.permit(:title, :description, :rent, :image)
      end

end
