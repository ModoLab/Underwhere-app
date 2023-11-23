class UnderwearsController < ApplicationController
  before_action :find_underwear, only: %i[show edit update destroy]

  def index
    @underwears = Underwear.all
    @underwear = Underwear.new

    if params[:query].present?
      sql_subquery = "title ILIKE :query OR description ILIKE :query"
      @underwears = @underwears.where(sql_subquery, query: "%#{params[:query]}%")
    end
    
  end

  def show
    @underwear = Underwear.find(params[:id])
    #@booking = @underwear.booking

  end

  def new
    @underwear = Underwear.new
  end

  def create
    @underwear = Underwear.new(underwear_params)
    @underwear.user = current_user
    if @underwear.save
      redirect_to underwears_path
    else
      @underwears = Underwear.all
      render :index, status: :unprocessable_entity
    end
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
    redirect_to user_path(current_user), status: :see_other
  end

  private

  def find_underwear
    @underwear = Underwear.find(params[:id])
  end

  def underwear_params
    params.require(:underwear).permit(:title, :description, :photo)
  end
end
