class BookingsController < ApplicationController
  before_action :set_kitchen

  def new
    @booking = Booking.new
    respond_to do |format|
      format.js
    end
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

  def set_kitchen
    @kitchen = Kitchen.new(params[:id])
  end
end
