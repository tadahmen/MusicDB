class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist=Artist.new
  end

  def create
    if @artist = Artist.create(artist_params)
      redirect_to @artist
    else
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def destroy
      @artist = Artist.find(params[:id])
      if @artist.destroy
        redirect_to artists_path
      else
        redirect_to @artist
      end
  end

  private #moet dit er echt in (waar is dit voor?)

  def artist_params
    params.require(:artist).permit(
      :name, :voice, :picture
    )
  end
end
