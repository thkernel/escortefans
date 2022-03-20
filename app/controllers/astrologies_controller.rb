class AstrologiesController < ApplicationController
  before_action :set_astrology, only: %i[ show edit update destroy ]

  # GET /astrologies or /astrologies.json
  def index
    @astrologies = Astrology.all
  end

  # GET /astrologies/1 or /astrologies/1.json
  def show
  end

  # GET /astrologies/new
  def new
    @astrology = Astrology.new
  end

  # GET /astrologies/1/edit
  def edit
  end

  # POST /astrologies or /astrologies.json
  def create
    @astrology = Astrology.new(astrology_params)

    respond_to do |format|
      if @astrology.save
        format.html { redirect_to astrology_url(@astrology), notice: "Astrology was successfully created." }
        format.json { render :show, status: :created, location: @astrology }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @astrology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /astrologies/1 or /astrologies/1.json
  def update
    respond_to do |format|
      if @astrology.update(astrology_params)
        format.html { redirect_to astrology_url(@astrology), notice: "Astrology was successfully updated." }
        format.json { render :show, status: :ok, location: @astrology }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @astrology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /astrologies/1 or /astrologies/1.json
  def destroy
    @astrology.destroy

    respond_to do |format|
      format.html { redirect_to astrologies_url, notice: "Astrology was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_astrology
      @astrology = Astrology.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def astrology_params
      params.require(:astrology).permit(:uid, :name, :status)
    end
end
