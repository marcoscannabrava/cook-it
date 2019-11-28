class KitchensController < ApplicationController
  def index
    @kitchens = Kitchen.all
  end

  def show
    @kitchen = Kitchen.find(params[:id])
    @booking = Booking.new
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    @kitchen.save
    redirect_to kitchen_path(@kitchen)
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:title, :city, :description, :price_per_hour, :photo, :photo_cache)
  end
end
