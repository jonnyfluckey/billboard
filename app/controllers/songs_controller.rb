class SongsController < ApplicationController
  
  before_action :set_artist, only: [:new]
  before_action :set_song, only: [:show, :update, :edit, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @songs = Song.new
  end

  def edit
  end

  def create
    @songs = Song.new(song_params)

    if @songs.save
      redirect_to artist_songs_path
    else
      render :new
    end
  end

  def update
    if @songs.update(song_params)
      redirect_to artist_songs_path
    else
      render :edit
    end
  end

  def destroy
    @songs.destroy
    redirect_to artist_songs_paths
  end


  private

  def set_song
    @songs = Song.find(params[:id])
  end

  def set_artist
    @artists = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:song_title, :artist_id, :artist_name, :chart_id)
  end
end
