class PagesController < ApplicationController
  def home
  end

  def show
    @level = Level.find(params[:level_id])
    @page = @level.pages.find(params[:id])
  end
end
