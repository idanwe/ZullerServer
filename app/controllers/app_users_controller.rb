class AppUsersController < ApplicationController
  # GET /app_users
  # GET /app_users.json
  def index
    @app_users = AppUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_users }
    end
  end

  # GET /app_users/1
  # GET /app_users/1.json
  def show
    @app_user = AppUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_user }
    end
  end

  # GET /app_users/new
  # GET /app_users/new.json
  def new
    @app_user = AppUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_user }
    end
  end

  # GET /app_users/1/edit
  def edit
    @app_user = AppUser.find(params[:id])
  end

  # POST /app_users
  # POST /app_users.json
  def create
    @app_user = AppUser.new(params[:app_user])

    respond_to do |format|
      if @app_user.save
        format.html { redirect_to @app_user, notice: 'App user was successfully created.' }
        format.json { render json: @app_user, status: :created, location: @app_user }
      else
        format.html { render action: "new" }
        format.json { render json: @app_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_users/1
  # PUT /app_users/1.json
  def update
    @app_user = AppUser.find(params[:id])

    respond_to do |format|
      if @app_user.update_attributes(params[:app_user])
        format.html { redirect_to @app_user, notice: 'App user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_users/1
  # DELETE /app_users/1.json
  def destroy
    @app_user = AppUser.find(params[:id])
    @app_user.destroy

    respond_to do |format|
      format.html { redirect_to app_users_url }
      format.json { head :no_content }
    end
  end
end
