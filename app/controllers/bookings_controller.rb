class BookingsController < ApplicationController
  def new
    raise
    @booking = Booking.new
    @user = User.find(user_id)
  end

  def create
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :underwear_id)
  end
end
