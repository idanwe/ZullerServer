class ApiController < ApplicationController
  def search
    # user_token = params[:user_token]
    attractions = Attraction.all

    result = attractions.sample(5)
    random_attractions = []
    result.each do |attraction|
      type = attraction.class
      random_attractions << { "#{type}" => attraction }
    end
    zuller_result = {}
    zuller_result['Attractions'] = random_attractions #rabl
    respond_to do |format|
      if params[:callback]
        format.js { render json: zuller_result, callback: params[:callback] }
      else
        format.json { render json: zuller_result }
      end
    end
  end

  def zuller_my_night
    Attraction.all[0]
    bars = Bar.all
    parties = Party.all

    bars_for_user = bars.sample(5)
    parties_for_user = parties.sample(5)

    zuller_result = {
      bars: bars_for_user,
      parties: parties_for_user
    }

    respond_to do |format|
      if params[:callback]
        format.js { render json: zuller_result, callback: params[:callback] }
      else
        format.json { render json: zuller_result }
      end
    end
  end

  def parties
    parties = Party.all
    respond_to do |format|
      if params[:callback]
        format.js { render json: parties, callback: params[:callback] }
      else
        format.json { render json: parties }
      end
    end
  end
end
