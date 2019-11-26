class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(cocktail_params)
    if @booking.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end
  end
end
