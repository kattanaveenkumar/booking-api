class BookingsController < ApplicationController
  has_scope :space_id
  has_scope :start_date

  def index
    @bookings = apply_scopes(Booking).all
    json_response(@bookings)
  end
end
