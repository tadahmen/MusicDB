class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    if @song = Song.create(song_params)
      redirect_to @song
    else
      render :new
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(
      :name, :artist, :good_for_mood
    )
  end
end
