class ArtistsController < ApplicationController
  
  before_action :set_artist, only: [:show, :update, :edit, :destroy]

  def index
    @artists = Artist.all
  end

  def show
    @songs = Song.where(Artist_id: @artists.id)
  end

  def new
    @artists = Artist.new
  end

  def edit
  end

  def create
    @artists = Artist.new(artist_params)

    if @artists.save
      redirect_to artists_path
    else
      render :new
    end
  end

  def update
    if @artists.update(artist_params)
      redirect_to @artists
    else
      render :edit
    end
  end

  def destroy
    @artists.destroy
    redirect_to artists_path
  end

  private

  def set_artist
    @artists = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
