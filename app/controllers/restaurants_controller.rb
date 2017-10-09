class RestaurantsController < ApplicationController
  def index
    @categories = RestaurantCategory.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @dishes = Dish.all
  end
end
