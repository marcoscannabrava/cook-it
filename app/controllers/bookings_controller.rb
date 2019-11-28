class BookingsController < ApplicationController
  before_action :set_kitchen

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.kitchen = @kitchen
    @booking.user = User.first                      # FIX HARDCODED USER AFTER USER LOGIN JOURNEY
    if @booking.save
      redirect_to kitchen_path(@kitchen)
    else
      redirect_to kitchen_path(@kitchen)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end

  def set_kitchen
    @kitchen = Kitchen.find(params[:kitchen_id])
  end
end
