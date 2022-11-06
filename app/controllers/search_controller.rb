class SearchController < ApplicationController
  def index
    @station = StationFacade.get_nearest(params[:location])
  end
end