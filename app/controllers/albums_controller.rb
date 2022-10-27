class AlbumsController < ApplicationController
  # before_action :set_album, only: %i[show edit update destroy]

  # def delete_album_photos
  #   attachment = ActiveStorage::Attachment.find(params[:id])
  #   attachment.purge
  #   redirect_back(fallback_location: albums_path)
  # end

  # # GET /albums or /albums.json
  # def index
  #   @albums = Album.all
  # end

  # # GET /albums/1 or /albums/1.json
  # def show
  # end

  # # GET /albums/new
  # def new
  #   @album = Album.new
  # end

  # # GET /albums/1/edit
  # def edit
  # end

  # # POST /albums or /albums.json
  # def create
  #   @album = Album.new(album_params)

  #   respond_to do |format|
  #     if @album.save
  #       format.html { redirect_to album_url(@album), notice: "Album was successfully created." }
  #       format.json { render :show, status: :created, location: @album }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @album.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /albums/1 or /albums/1.json
  # def update
  #   respond_to do |format|
  #     if @album.update(album_params)
  #       format.html { redirect_to album_url(@album), notice: "Album was successfully updated." }
  #       format.json { render :show, status: :ok, location: @album }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @album.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /albums/1 or /albums/1.json
  # def destroy
  #   @album.destroy

  #   respond_to do |format|
  #     format.html { redirect_to albums_url, notice: "Album was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  def index
    @albums = Album.all
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
    @album = Album.find(params[:id])
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
