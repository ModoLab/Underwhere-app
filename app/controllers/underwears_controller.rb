class UnderwearsController < ApplicationController
  def index
    @underwears = Underwear.all
  end

  def show
    @underwear = Underwear.find(params[:id])
  end

  def new
    @underwear = Underwear.new
  end

  def create
    @underwear = Underwear.new(underwear_params)
    @underwear.save
    redirect_to underwears_path
  end

  def edit
    @underwear = Underwear.find(params[:id])
  end

  def update
    @underwear = Underwear.find(params[:id])
    @underwear.update(params[:underwear])
  end

  def destroy
    @underwear = Underwear.find(params[:id])
    @underwear.destroy
    # No need for app/views/underwears/destroy.html.erb
    redirect_to underwears_path, status: :see_other
  end


  private

  def underwear_params
    params.require(:underwear).permit(:title, :description)
  end



end
