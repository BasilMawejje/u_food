json.restaurant do
  json.id @restaurant.id
  json.name @restaurant.name
  json.restaurant_category @restaurant.restaurant_category.name
  json.menu @restaurant.menus do |menu|
    unless menu.dishes.empty?
      json.id menu.id
      json.name menu.name
      json.dishes menu.dishes do |dish|
        json.id dish.id
        json.name dish.name
        json.description dish.description
        json.price dish.price
        json.image dish.image
        json.dish_category dish.dish_category.name
      end
    end
  end
end
