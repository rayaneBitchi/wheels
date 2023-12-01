class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def show
    # @car = Car.find(params[:id])  #set in before action
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    # raise
    @car.save
    redirect_to profile_path
  end

  def edit
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    # before_action defines @car
    @car.destroy
    redirect_to profile_path # status: :see_others
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :year, :make, :color, :price, :transmission, :area, photos: [])
  end
end
