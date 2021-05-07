class Favorite < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :user
  belongs_to :house

  scope :user_favorites, ->(id) { where('house_id = ?', id) }
  scope :fav_toogle, ->(user, house) { where(user_id: user, house_id: house) }
end
