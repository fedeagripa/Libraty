class BookingsController < ApplicationController
  before_action :authenticate_user!
  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to action: "index"
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.permit(:book_id).merge(user_id: current_user.id)
    end
end
