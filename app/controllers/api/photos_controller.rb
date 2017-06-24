class Api::PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    # debugger
    @photo = Photo.find(params[:id])

    if @photo
      render 'api/photos/show'
    else
      render json: @photo.errors.full_messages, status: 422
    end
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      render :show
    else
      render json: @photo.errors.full_messages, status: 422
    end
  end

  def destroy
    @photo = Photo.find(params[:id])

    if @photo.destroy
      render :show
    else
      render json: @photo.errors.full_messages, status: 422
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :caption, :user_id)
  end
end
