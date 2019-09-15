class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :genre)
  end
end
