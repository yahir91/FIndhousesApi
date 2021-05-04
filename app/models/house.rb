class House < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_many :favorites
  has_many :users, through: :favorites
  has_one_attached :image
  scope :userFav, ->(params) { where(user_id: params[0], house: params[1]) }
end
