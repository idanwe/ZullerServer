class PartiesController < ApplicationController
  before_filter :authenticate_user!
  # GET /parties
  # GET /parties.json
  def index
    @parties = Party.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parties }
    end
  end

  # GET /parties/1
  # GET /parties/1.json
  def show
    @party = Party.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @party }
    end
  end

  # GET /parties/new
  # GET /parties/new.json
  def new
    @party = Party.new

    Attraction.all[0]
    @hosts = Place.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @party }
    end
  end

  # GET /parties/1/edit
  def edit
    @party = Party.find(params[:id])

    Attraction.all[0]
    @hosts = Place.all
  end

  # POST /parties
  # POST /parties.json
  def create
    Attraction.all[0]

    params[:line][:day_of_week] = Date::DAYNAMES.index(params[:line][:day_of_week])

    if params[:party][:logo_url].empty?
      params[:party][:logo_url] = "https://www.filepicker.io/api/file/Oz1izQPSl2cGvt3NeHoA"
    end

    @party = Party.new(params[:party])
    if params[:party][:host].present?
      @host = Place.find(params[:party][:host])
      @host.parties << @party
    end

    respond_to do |format|
      if @party.save
        format.html { redirect_to @party, notice: 'Party was successfully created.' }
        format.json { render json: @party, status: :created, location: @party }
      else
        format.html { render action: "new" }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parties/1
  # PUT /parties/1.json
  def update
    @party = Party.find(params[:id])
    host = Place.find(params[:party][:host])
    params[:party][:host] = host

    respond_to do |format|
      if @party.update_attributes(params[:party])
        format.html { redirect_to @party, notice: 'Party was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parties/1
  # DELETE /parties/1.json
  def destroy
    @party = Party.find(params[:id])
    @party.destroy

    respond_to do |format|
      format.html { redirect_to parties_url }
      format.json { head :no_content }
    end
  end
end
