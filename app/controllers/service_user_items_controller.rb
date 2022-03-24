class ServiceUserItemsController < ApplicationController
  before_action :set_service_user_item, only: %i[ show edit update destroy ]

  # GET /service_user_items or /service_user_items.json
  def index
    @service_user_items = ServiceUserItem.all
  end

  # GET /service_user_items/1 or /service_user_items/1.json
  def show
  end

  # GET /service_user_items/new
  def new
    @service_user_item = ServiceUserItem.new
  end

  # GET /service_user_items/1/edit
  def edit
  end

  # POST /service_user_items or /service_user_items.json
  def create
    @service_user_item = ServiceUserItem.new(service_user_item_params)

    respond_to do |format|
      if @service_user_item.save
        format.html { redirect_to service_user_item_url(@service_user_item), notice: "Service user item was successfully created." }
        format.json { render :show, status: :created, location: @service_user_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_user_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_user_items/1 or /service_user_items/1.json
  def update
    respond_to do |format|
      if @service_user_item.update(service_user_item_params)
        format.html { redirect_to service_user_item_url(@service_user_item), notice: "Service user item was successfully updated." }
        format.json { render :show, status: :ok, location: @service_user_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_user_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_user_items/1 or /service_user_items/1.json
  def destroy
    @service_user_item.destroy

    respond_to do |format|
      format.html { redirect_to service_user_items_url, notice: "Service user item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_user_item
      @service_user_item = ServiceUserItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_user_item_params
      params.require(:service_user_item).permit(:uid, :service_user_id, :service_id, :price)
    end
end
