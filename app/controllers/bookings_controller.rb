class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :review_bookings, only: :index
  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.where('user_id' => current_user.id)
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)
    bookings = Booking.where(book_id: @booking.book.id,user_id: @booking.user.id)
    if bookings != nil
      @booking.stat = 'Denied'
    else
      @booking.stat = 'Pending'
    end
    @booking.save

    redirect_to action: "index"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.permit(:book_id).merge(user_id: current_user.id)
    end

    def review_bookings
      bookings = Booking.where(stat: "Aproved")
      bookings.each do |b|
        if b.created_at < 1.day.ago
          b.stat = "Finished"
          b.save
        end
      end
    end
end
