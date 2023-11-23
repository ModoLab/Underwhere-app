class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def show
    @user = User.find(params[:id])
    @underwears = @user.underwears
    #@bookings = @user.booked_underwears
  end
end
