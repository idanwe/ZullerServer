class ApiController < ApplicationController
  def search

    result = Attraction.fulltext_search(params[:q])
    # result = Place.fulltext_search(params[:q])
    # result = Event.fulltext_search(params[:q], at_the_future: true)

    respond_to do |format|
      format.json { render json: result }
    end
  end

  def zuller_my_night
    # user_token = params[:user_token]
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
      format.json { render json: zuller_result }
    end
  end

  def parties
    parties = Party.all
    respond_to do |format|
      format.json { render json: parties }
    end
  end
end
