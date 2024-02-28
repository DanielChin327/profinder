class ServicesController < ApplicationController
  # skip_before_action :authenticate_user!, only [:index, :show]
  def index
    @services = Service.all
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
    @service = Service.find(params[:id])
    @review = Review.new
    @reviews = Review.all
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :price, :schedule, :category)
  end

end
