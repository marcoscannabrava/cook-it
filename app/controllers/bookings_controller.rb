class BookingsController < ApplicationController
  before_action :set_kitchen, only: [:create, :new]

  def index
    @bookings = current_user.bookings
  end

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

  def my_bookings
    # @bookings = current_user.bookings
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end

  def set_kitchen
    @kitchen = Kitchen.find(params[:kitchen_id])
  end
end
