class ReviewsController < ApplicationController
def create
  @service = Service.find(params[:service_id])
  @review =Review.new(review_params)
  @review.user = current_user
  @review.service = @review
  if @service.save
    redirect_to services_path
  else
    render "service/show"
  end
end
private

def review_params
  params.require(:review)
end

end

def booking_params
  # params.require(:bookings).permit(:)
  params.require(:booking).permit(:rating, :comment, :eng_rating)
end
end
