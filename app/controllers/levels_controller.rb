class LevelsController < ApplicationController
  def index
    @levels = Level.order(:position)
  end

  def show
    @level = Level.find(params[:id])
    @pages = @level.pages.order(:position)
  end
end
