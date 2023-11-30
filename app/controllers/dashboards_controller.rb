class DashboardsController < ApplicationController

  def profile
    @user = current_user
    @cars = @user.cars
  end
end
