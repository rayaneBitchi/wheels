class DashboardsController < ApplicationController

  def profile
    @user = current_user
    # @user_cars = Car.where(user_id: @user.id)
    # raise
    @cars = @user.cars
    @bookings = @user.bookings
  end
end
