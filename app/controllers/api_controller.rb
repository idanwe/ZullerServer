class ApiController < ApplicationController
  def search
    # user_token = params[:user_token]
    attractions = Attraction.all

    result = attractions.sample(5)
    randomAttraction = []
    result.each do |attraction|
      type = attraction.class
      randomAttraction << { "#{type}" => attraction }
    end
    zullerResult = {}
    zullerResult['Attractions'] = randomAttraction
    respond_to do |format|
      format.json { render json: zullerResult }
    end
  end
end
