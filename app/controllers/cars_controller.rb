class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    # raise
    @car = Car.new(car_params)
    redirect_to profile_path
  end

  private

  def car_params
    params.require(:car).permit(:model, :year, :make, :color, :price, :transmission, :area, photos: [])
  end
end
