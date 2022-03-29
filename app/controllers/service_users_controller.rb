class ServiceUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_service_user, only: %i[ show edit update destroy ]

  # GET /service_users or /service_users.json
  def index
    @service_users = ServiceUser.all
  end

  # GET /service_users/1 or /service_users/1.json
  def show
  end

  def service_user
    uid = params[:uid]
    user = User.find_by(uid: uid)
    
    if user.present? && user.service_user.present?
      @service_user = user.service_user
    else
      @service_user = ServiceUser.new
    end

    @services = Service.all

    service_user_items = @current_user.service_user.service_user_items if current_user.service_user.present?

    @selected_services = service_user_items unless service_user_items.blank?


    
  end


  # GET /service_users/new
  def new
    @service_user = ServiceUser.new
  end

  # GET /service_users/1/edit
  def edit
  end

  # POST /service_users or /service_users.json
  def create
    @service_user = current_user.build_service_user(service_user_params)

    params[:service_user_items][:services].each do |service_user_item|
      unless service_user_item.empty?
        @service_user.service_user_items.build(service_id: service_user_item)
      end
    end

    respond_to do |format|
      if @service_user.save
        format.html { redirect_to service_user_url(@service_user), notice: "Service user was successfully created." }
        format.json { render :show, status: :created, location: @service_user }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_user.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /service_users/1 or /service_users/1.json
  def update

    @service_user.service_user_items.delete_all
     
     # Create Scholarship study levels
     params[:service_user_items][:services].each do |service_user_item|
      unless service_user_item.empty?
        @service_user.service_user_items.build(service_id: service_user_item)
      end
    end


    respond_to do |format|
      if @service_user.update(service_user_params)
        @profile = current_user.profile
        format.html { redirect_to service_user_url(@service_user), notice: "Service user was successfully updated." }
        format.json { render :show, status: :ok, location: @service_user }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_user.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /service_users/1 or /service_users/1.json
  def destroy
    @service_user.destroy

    respond_to do |format|
      format.html { redirect_to service_users_url, notice: "Service user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_user
      @service_user = ServiceUser.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_user_params
      params.require(:service_user).permit(:uid, service_user_items: [:services])
    end
end
