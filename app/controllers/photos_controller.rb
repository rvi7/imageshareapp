class PhotosController < ApplicationController
  def index
    @photos=Photo.all
  end
  def show
    @photo=Photo.find(params[:id])
  end

 def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save!
      redirect_to photos_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      redirect_to @photo
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def photo_params
      params.require(:photo).permit(:tagline,:created_on,:album_id,:image)
    end

end
