class RenameCategoryToRestaurantCategory < ActiveRecord::Migration[5.1]
  def change
    rename_table :categories, :restaurant_categories
  end
end
