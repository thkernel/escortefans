class ServiceUsersController < ApplicationController
  before_action :set_service_user, only: %i[ show edit update destroy ]

  # GET /service_users or /service_users.json
  def index
    @service_users = ServiceUser.all
  end

  # GET /service_users/1 or /service_users/1.json
  def show
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
    @service_user = ServiceUser.new(service_user_params)

    respond_to do |format|
      if @service_user.save
        format.html { redirect_to service_user_url(@service_user), notice: "Service user was successfully created." }
        format.json { render :show, status: :created, location: @service_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_users/1 or /service_users/1.json
  def update
    respond_to do |format|
      if @service_user.update(service_user_params)
        format.html { redirect_to service_user_url(@service_user), notice: "Service user was successfully updated." }
        format.json { render :show, status: :ok, location: @service_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_user.errors, status: :unprocessable_entity }
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
      @service_user = ServiceUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_user_params
      params.require(:service_user).permit(:service_id, :user_id)
    end
end
