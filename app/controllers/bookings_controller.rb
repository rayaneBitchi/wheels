class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = Car.find(params[:car_id])
    @booking.status = "pending"
    @booking.total_price = @booking.car.price * (@booking.return_date - @booking.pickup_date).to_i
    @booking.save
    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:pickup_date, :return_date, :pick_up_address, :drop_off_address)
  end
end
