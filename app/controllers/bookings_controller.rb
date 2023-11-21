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
end
