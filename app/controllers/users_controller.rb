class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def show
    @user = User.find(params[:id])
    @bookings = @user.booked_underwears
    @underwears = @user.underwears
  end
end
