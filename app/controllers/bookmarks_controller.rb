class BookmarksController < ApplicationController
  before_action :set_service, only: [:create]

  def index
    @bookmarks = current_user.bookmarks
  end

  def create
    # @service = Service.find(params[:service_id]) #don't need because it is put in Private method.
    @bookmark = Bookmark.new
    @review = Review.new
    @bookmark.user = current_user
    @bookmark.service = @service
    if @bookmark.save
      redirect_to service_path(@service)
    else
      render "services/show"
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

  def destroy
  @bookmarks = Bookmark.find(params[:id])
  @bookmarks.destroy
  redirect_to bookmarks_path
  end

  private
  def set_service
    @service = Service.find(params[:service_id])
  end


end
