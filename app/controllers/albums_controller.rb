class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    # @album = Album.find(params[:id])
    @album = Album.first
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @album = Album.find(params[:id])
    @album = Album.first
  end

  def update
    @album = Album.find(params[:id])
    @album.update(album_params)
    redirect_to album_path(@album)
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path, status: :see_other
  end

  private

  def album_params
    params.require(:album).permit(:title, :description, photos: [])
  end
end
