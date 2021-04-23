class House < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_many :favorites
  has_many :users, through: :favorites
  has_one_attached :image
end
