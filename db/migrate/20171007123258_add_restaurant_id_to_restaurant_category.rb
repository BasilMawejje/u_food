class AddRestaurantIdToRestaurantCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :restaurant_categories, :restaurant, foreign_key: true
  end
end
