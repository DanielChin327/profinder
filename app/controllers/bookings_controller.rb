class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @past_bookings = @bookings.where(status: 'approved').where('end_date < ?', Time.now).order(end_date: :desc, start_date: :desc)
    @upcoming_bookings = @bookings.where(status: ['pending', 'approved']).where('end_date >= ?', Time.now).order(start_date: :asc, end_date: :asc)
    @denied_bookings = @bookings.where(status: 'rejected').order(created_at: :desc)
  end

  def create
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    # @booking.status = "pending"
    @booking.service = @service
    if @booking.save
      redirect_to bookings_path
    else
      render "services/show"
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to professional_bookings_path
    else
      render "services/show"
    end
  end

  private

  def booking_params
    # params.require(:bookings).permit(:)
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
