class Professional::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings_as_professional
    @past_bookings = @bookings.where(status: 'approved').where('end_date < ?', Time.now).order(end_date: :desc, start_date: :desc)
    @upcoming_bookings = @bookings.where(status: ['pending', 'approved']).where('end_date >= ?', Time.now).order(start_date: :asc, end_date: :asc)
    @denied_bookings = @bookings.where(status: 'rejected').order(created_at: :desc)
  end


end
