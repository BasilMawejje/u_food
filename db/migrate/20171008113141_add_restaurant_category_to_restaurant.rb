class AddRestaurantCategoryToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_reference :restaurants, :restaurant_category, foreign_key: true
  end
end
