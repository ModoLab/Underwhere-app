class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
    @underwears = @user.underwears
  end
end
