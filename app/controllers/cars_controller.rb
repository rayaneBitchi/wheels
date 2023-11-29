class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save!
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:model, :year, :make, :color, :price, :transmission, :area, :photos)
  end
end
