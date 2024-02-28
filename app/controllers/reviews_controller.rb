class ReviewsController < ApplicationController

  def create
    @service = Service.find(params[:service_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.service = @service
    if @review.save
      redirect_to service_path(@service)
    else
      render "services/show"
    end
  end

  private

  def review_params
    # params.require(:bookings).permit(:)
    params.require(:review).permit(:rating, :comment, :eng_rating)
  end

end
