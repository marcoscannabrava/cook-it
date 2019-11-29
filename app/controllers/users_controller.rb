class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
   # @bookings = Booking.where
    #@kitchens =
  end

end
