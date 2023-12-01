class DashboardsController < ApplicationController

  def profile
    @newCar = Car.new
    @user = current_user
    # @user_cars = Car.where(user_id: @user.id)
    # raise
    @listings = @user.listings
    @cars = @user.cars
    @bookings = @user.bookings
  end
end
