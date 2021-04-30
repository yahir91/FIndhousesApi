class Favorite < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :user
  belongs_to :house

  scope :user_favorites, ->(id) { where(house_id: id) }

  # def favorites_houses(user, id)
  #   user.favorites.find_by(house_id: id)
  # end
end
