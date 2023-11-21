class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @underwear = Underwear.find(params[:underwear_id])
    @user = @booking.user
  end

  def create
    @booking = Booking.new(booking_params)
    @underwear = Underwear.find(params[:underwear_id])
    @booking.user = current_user
    @booking.underwear = @underwear
    @booking.save
    if @booking.save
      redirect_to underwear_path(@underwear)
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
