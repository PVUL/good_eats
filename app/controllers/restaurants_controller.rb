class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
    @review = Review.new
    @reviews = @restaurant.reviews
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description, :category)
  end
end
