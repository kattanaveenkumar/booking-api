class BookingsController < ApplicationController
  def index
    if params[:space_id].present?
      render json: { bookings: Booking.filter_by_space_id(params[:space_id]).map{ |booking| { id: booking.id, start_date: booking.start_date, end_date: booking.end_date, space: booking.space.name } }} 
    elsif params[:start_date].present?
    else
      render json: {bookings: Booking.includes(:space).all.map{ |booking| {id: booking.id, start_date: booking.start_date, end_date: booking.end_date, space: booking.space.name} }}
    end
  end
end
