class ServicesController < ApplicationController
  # skip_before_action :authenticate_user!, only [:index, :show]
  def index
    @services = Service.order(created_at: :desc).page(params[:page])
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR category ILIKE :query"
      @services = @services.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to service_path(@service)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def show
    @bookmark = Bookmark.new
    @review = Review.new
    @reviews = Review.all
    @service = Service.find(params[:id])
    @is_bookmarked = current_user.bookmarks.exists?(service_id: @service.id)
    @average_rating = (@service.reviews.average(:rating) + @service.reviews.average(:eng_rating)) / 2
    @marker = [{
      lat: @service.latitude,
      lng: @service.longitude,
      marker_html: render_to_string(partial: "map_marker", locals: {service: @service}) #@service?
    }]
  end
  private

  def service_params
    params.require(:service).permit(:title, :description, :price, :schedule, :category)
  end

end
