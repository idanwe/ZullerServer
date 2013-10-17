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
    params[:app_user].delete(:favorite_music) # TODO: work with string
    user_with_device_id = AppUser.where(device_id: params[:app_user][:device_id])
    if user_with_device_id.exists?
      @app_user = user_with_device_id.first
    end

    if params[:app_user][:fb_user_id].present?
      user_with_fb_id = AppUser.where(fb_user_id: params[:app_user][:fb_user_id])
      if user_with_fb_id.exists?
        if @app_user.nil?
          @app_user = user_with_fb_id.first
        end
        @app_user.update_attributes(params[:app_user])
      elsif @app_user.present?
        @app_user.update_attributes(params[:app_user])
      end
    end

    if @app_user.nil?
      @app_user = AppUser.new(params[:app_user])
    end

    respond_to do |format|
      is_new_user = @app_user.new_record?
      if @app_user.save
        @app_user["is_new"] = true
        format.html { redirect_to @app_user, notice: 'App user was successfully created.' }
        format.json { render json: @app_user, status: :created, location: @app_user }
      else
        format.html { render action: "new" }
        format.json { render json: @app_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # def create
  #   fb_user_id = params[:app_user][:fb_user_id]
  #   debugger
  #   if fb_user_id.present?
  #     # if AppUser.fb_id_exists? fb_user_id
  #     @app_user_with_fb_id = AppUser.where(fb_user_id: fb_user_id)
  #     debugger
  #     if @app_user_with_fb_id.exists?
  #       @app_user = @app_user_with_fb_id.first
  #       device_id = params[:app_user][:device_id]
  #       debugger
  #       if @app_user.devices_ids.nil?
  #         @app_user.devices_ids = [device_id]
  #         debugger
  #       elsif not @app_user.devices_ids.include? device_id
  #         debugger
  #         @app_user.devices_ids << device_id
  #         debugger
  #       end
  #     else
  #       @app_user_with_device_id = AppUser.where(devices_ids: params[:app_user][:device_id])
  #       debugger
  #       if @app_user_with_device_id.exists?
  #         @app_user = @app_user_with_device_id
  #         params[:app_user][:devices_ids] << params[:app_user].delete(:device_id)
  #         debugger
  #         @app_user.update(params[:app_user])
  #         @app_user = @app_user.first
  #         debugger
  #       end
  #     end
  #   end

  #   debugger
  #   if @app_user.nil?
  #     params[:app_user][:devices_ids] = [params[:app_user].delete(:device_id)]
  #     debugger
  #     @app_user = AppUser.new(params[:app_user]) # not creating device_id as array
  #   end

  #   respond_to do |format|
  #     debugger
  #     if @app_user.save
  #       format.html { redirect_to @app_user, notice: 'App user was successfully created.' }
  #       format.json { render json: @app_user, status: :created, location: @app_user }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @app_user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

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
