class CarsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @car = Car.find(params[:id])
  end
end
