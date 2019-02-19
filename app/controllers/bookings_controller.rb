class BookingsController < ApplicationController
  def new
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.artwork = Artwork.find(params[:artwork_id])
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:content)
  end
end
