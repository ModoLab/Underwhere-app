class UnderwearsController < ApplicationController
  before_action :find_underwear, only: %i[show edit update destroy]

  def index
    @underwears = Underwear.all
  end

  def show
    @underwear = Underwear.find(params[:id])
    @booking = @underwear.booking
  end

  def new
    @underwear = Underwear.new
  end

  def edit
    @underwear = Underwear.find(params[:id])
  end

  def create
    @underwear = Underwear.new(underwear_params)
    @underwear.save
    redirect_to underwears_path
  end


  def update
    @underwear = Underwear.find(params[:id])
    @underwear.update(params[:underwear])
  end

  def destroy
    @underwear = Underwear.find(params[:id])
    @underwear.destroy
    redirect_to underwears_path, status: :see_other
  end

  private

  def find_underwear
    @underwear = Underwear.find(params[:id])
  end

  def underwear_params
    params.require(:underwear).permit(:title, :description)
  end
end
