class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @user = @booking.user
  end

  def create
    @booking = Booking.new(booking_params)
    @underwear = Underwear.find(params[:underwear_id])
    @booking.underwear = @booking
    @user = @booking.underwear.user
    @booking.save
    if @booking.save
      redirect_to current_user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :underwear_id)
  end
end
