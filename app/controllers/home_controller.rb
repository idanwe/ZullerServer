class HomeController < ApplicationController
  def index
  end

  def search
    attractions = Attraction.all
    respond_to do |format|
      format.json { render json: attractions }
    end
  end
end
