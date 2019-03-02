class SongsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end
end
