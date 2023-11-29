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
    raise
    @car = Car.new()
  end
end
