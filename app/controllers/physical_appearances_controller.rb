class PhysicalAppearancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_physical_appearance, only: %i[ show edit update destroy ]

  # GET /physical_appearances or /physical_appearances.json
  def index
    @physical_appearances = PhysicalAppearance.all
  end

  # GET /physical_appearances/1 or /physical_appearances/1.json
  def show
  end

  # GET /physical_appearances/new
  def new
    @physical_appearance = PhysicalAppearance.new
  end

  def physical_appearance
    uid = params[:uid]
    user = User.find_by(uid: uid)
    
    if user.present? && user.physical_appearance.present?
      @physical_appearance = user.physical_appearance
    else
      @physical_appearance = PhysicalAppearance.new
    end


    
  end

  # GET /physical_appearances/1/edit
  def edit
  end

  # POST /physical_appearances or /physical_appearances.json
  def create
    @physical_appearance = current_user.build_physical_appearance(physical_appearance_params)

    respond_to do |format|
      if @physical_appearance.save
        format.html { redirect_to physical_appearance_url(@physical_appearance), notice: "Physical appearance was successfully created." }
        format.json { render :show, status: :created, location: @physical_appearance }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @physical_appearance.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /physical_appearances/1 or /physical_appearances/1.json
  def update
    respond_to do |format|
      if @physical_appearance.update(physical_appearance_params)
        @profile = current_user.profile
        format.html { redirect_to physical_appearance_url(@physical_appearance), notice: "Physical appearance was successfully updated." }
        format.json { render :show, status: :ok, location: @physical_appearance }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @physical_appearance.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /physical_appearances/1 or /physical_appearances/1.json
  def destroy
    @physical_appearance.destroy

    respond_to do |format|
      format.html { redirect_to physical_appearances_url, notice: "Physical appearance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_appearance
      @physical_appearance = PhysicalAppearance.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def physical_appearance_params
      params.require(:physical_appearance).permit(:height, :weight, :eye, :hair, :corpulence)
    end
end
