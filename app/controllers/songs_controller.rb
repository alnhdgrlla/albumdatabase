class SongsController < ApplicationController
  before_action :set_song, only: [ :show, :edit, :update, :destroy]

  def index
    @songs = song.all
  end

  def new
    @song = song.new
  end

  def create
    @song = song.new(song_params)
    @song.save
  end

  def show
  end

  def edit
  end

  def update
    @song.update(song_params)
  end

  def destroy
    @song.destroy
  end

  private

  def set_song
    @song = song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :genre)
  end
end
