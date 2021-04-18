class FavoritesController < ApplicationController
    before_action :set_user, only: %i[create index]
    
    def create
         favorite = @current_user.favorites.create!(house_id: params['house']['id'])

        if favorite
            render json: {
                status: :created,
            }
        else
            render json: { status: 500 }
        end
    end

    def index
        render json: {
            favorites_houses: @current_user.houses,
        }
    end

    private

  def set_user
    if session[:user_id]
        @current_user = User.find(session[:user_id])
    end
  end
        
end
