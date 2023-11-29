class CarsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
    @car.save
  end

  def create
    # raise
    @car = Car.new(car_params)
    redirect_to profile_path
  end

  private

  def car_params
    params.require(:car).permit(:model, :year, :make, :color, :price, :transmission, :area)
  end
end
