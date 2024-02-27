class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmarks.all
  end

  def create
    @services = Service.find(params[:service_id])
    @bookmark = Bookmark.new(bookmark_param)
    @booking.user = current_user
    @booking.service = @service
    if @booking.save
      redirect_to bookings_path
    else
      render "service/show"
    end
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to services_path
    else
      render "service/show"
    end
  end

  private


end
