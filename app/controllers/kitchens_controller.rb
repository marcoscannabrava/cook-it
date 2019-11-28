class KitchensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR address ILIKE :query OR description ILIKE :query OR city ILIKE :query"
      @kitchens = Kitchen.where(sql_query, query: "%#{params[:query]}%")
    else
      @kitchens = Kitchen.all
    end
  end

  def show
    @kitchen = Kitchen.find(params[:id])
    @booking = Booking.new
    @marker = {
      lat: @kitchen.latitude,
      lng: @kitchen.longitude
    }
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    @kitchen.owner = current_user
    if @kitchen.save
      redirect_to kitchen_path(@kitchen)
    else
      render :new
    end
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:title, :city, :description, :price_per_hour, :photo, :photo_cache)
  end
end
