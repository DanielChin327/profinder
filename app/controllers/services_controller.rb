class ServicesController < ApplicationController
  # skip_before_action :authenticate_user!, only [:index, :show]
  def index
    @services = Service.all
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
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :price, :schedule, :category)
  end

end
