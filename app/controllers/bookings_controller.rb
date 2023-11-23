class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @underwear = Underwear.find(params[:underwear_id])
    @unavailable_dates = @underwear.unavailable_dates
    @user = @booking.user
  end

  def create
    @booking = Booking.new(booking_params)
    @underwear = Underwear.find(params[:underwear_id])
    @booking.user = current_user
    @booking.underwear = @underwear
    @unavailable_dates = @underwear.unavailable_dates
    if @booking.save
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :underwear_id)
  end
end
