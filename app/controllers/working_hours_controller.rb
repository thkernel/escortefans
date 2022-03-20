class WorkingHoursController < ApplicationController
  before_action :set_working_hour, only: %i[ show edit update destroy ]

  # GET /working_hours or /working_hours.json
  def index
    @working_hours = WorkingHour.all
  end

  # GET /working_hours/1 or /working_hours/1.json
  def show
  end

  # GET /working_hours/new
  def new
    @working_hour = WorkingHour.new
  end

  # GET /working_hours/1/edit
  def edit
  end

  # POST /working_hours or /working_hours.json
  def create
    @working_hour = WorkingHour.new(working_hour_params)

    respond_to do |format|
      if @working_hour.save
        format.html { redirect_to working_hour_url(@working_hour), notice: "Working hour was successfully created." }
        format.json { render :show, status: :created, location: @working_hour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @working_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /working_hours/1 or /working_hours/1.json
  def update
    respond_to do |format|
      if @working_hour.update(working_hour_params)
        format.html { redirect_to working_hour_url(@working_hour), notice: "Working hour was successfully updated." }
        format.json { render :show, status: :ok, location: @working_hour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @working_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /working_hours/1 or /working_hours/1.json
  def destroy
    @working_hour.destroy

    respond_to do |format|
      format.html { redirect_to working_hours_url, notice: "Working hour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working_hour
      @working_hour = WorkingHour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def working_hour_params
      params.require(:working_hour).permit(:uid, :day, :start_hour, :end_hour, :status, :user_id)
    end
end
