module ApplicationHelper
  def favorites_houses(user, id)
    user.favorites.find_by(house_id: id)
  end

  def image_urls(user)
    user.houses.map { |house| url_for(house.image) }
  end

  def houses_urls
    House.all.map { |house| url_for(house.image) }
  end

  def user_fav(user_id, house_id)
    Favorite.where(user_id: user_id, house_id: house_id).first
  end
end
