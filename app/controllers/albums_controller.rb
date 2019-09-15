class AlbumsController < ApplicationController
  class SongsController < ApplicationController
  class ArtistsController < ApplicationController
  before_action :set_album, only: [ :show, :edit, :update, :destroy]

  def index
    @albums = album.all
  end

  def new
    @album = album.new
  end

  def create
    @album = album.new(album_params)
    @album.save
  end

  def show
  end

  def edit
  end

  def update
    @album.update(album_params)
  end

  def destroy
    @album.destroy
  end

  private

  def set_album
    @album = album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:name, :genre)
  end
end
end
end
