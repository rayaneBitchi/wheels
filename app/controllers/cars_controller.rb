class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    # @listing = Listing.find(params[:id])
    # pp @listing
    # @listing = Listing.where(car_id: c.id)
    # pp @listing
    # @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.save
    redirect_to profile_path
  end

  private

  def car_params
    params.require(:car).permit(:model, :year, :make, :color, :transmission, photos: [])
  end
end
