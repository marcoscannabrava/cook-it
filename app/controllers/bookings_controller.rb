class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    format.js { render partial: 'modal.js.erb' }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to kitchens_path(@kitchen)
    else
      render "new"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end

end
