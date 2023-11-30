class DashboardsController < ApplicationController

  def profile
    @user = current_user
    # raise
    @cars = @user.cars
  end
end
