class House < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_many :favorites
  has_many :users, through: :favorites
  has_one_attached :image

  scope :favor, ->(current_user) { where('id = ?', current_user) }
  # scope :fav, -> {where(id: 2)}
  # def self.favor(current_user)
  #   where('id = ?', current_user)
  # end
  def self.fav
    where(id: 2)
  end

  # def user_fav(user_id, house_id)
  #   Favorite.where(user_id: user_id, house_id: house_id).first
  # end
end
