class BookingsController < ApplicationController
  has_scope :space_id
  has_scope :start_date #Here we can add any number of filters in the future

  def index
    @bookings = apply_scopes(Booking).includes(:space).all.map{|booking| {id: booking.id, start_date: booking.start_date, end_date: booking.end_date, space: booking.space.name}}
    json_response(@bookings)
  end
end
