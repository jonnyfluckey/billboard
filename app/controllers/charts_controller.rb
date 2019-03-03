class ChartsController < ApplicationController
  
  before_action :set_chart, only: [:show, :update, :edit, :destroy]
  
  
  def index
    @charts = Chart.all
  end

  def show
  end

  def new
    @charts = Chart.new
  end

  def edit
  end

  def create
    @charts = Chart.new(chart_params)

    if @charts.save
      redirect_to charts_path
    else
      render :new
    end
  end

  def update
    if @charts.update(chart_params)
      redirect_to @charts
    else
      render :edit
    end
  
  end

  def destroy
    @charts.destroy
    redirect_to charts_path
  end

  private

  def set_chart
    @charts = Chart.find(params[:id])
  end

  def chart_params
    params.require(:chart).permit(:chart_name, :rank, :song_id, :song_title, :artist_name)
  end
end
