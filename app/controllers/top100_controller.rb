class Top100Controller < ApplicationController
  def index
    @chart = Top100.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
