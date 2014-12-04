class PhotosController < ApplicationController
  def index
    @photos = Photo.all.order("likes DESC")
  end

  def like
    @photo = Photo.find(params[:id])
    @photo.likes += 1
    @photo.save
  end
end
