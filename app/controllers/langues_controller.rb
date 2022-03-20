class LanguesController < ApplicationController
  before_action :set_langue, only: %i[ show edit update destroy ]

  # GET /langues or /langues.json
  def index
    @langues = Langue.all
  end

  # GET /langues/1 or /langues/1.json
  def show
  end

  # GET /langues/new
  def new
    @langue = Langue.new
  end

  # GET /langues/1/edit
  def edit
  end

  # POST /langues or /langues.json
  def create
    @langue = Langue.new(langue_params)

    respond_to do |format|
      if @langue.save
        format.html { redirect_to langue_url(@langue), notice: "Langue was successfully created." }
        format.json { render :show, status: :created, location: @langue }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @langue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /langues/1 or /langues/1.json
  def update
    respond_to do |format|
      if @langue.update(langue_params)
        format.html { redirect_to langue_url(@langue), notice: "Langue was successfully updated." }
        format.json { render :show, status: :ok, location: @langue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @langue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /langues/1 or /langues/1.json
  def destroy
    @langue.destroy

    respond_to do |format|
      format.html { redirect_to langues_url, notice: "Langue was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_langue
      @langue = Langue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def langue_params
      params.require(:langue).permit(:uid, :name, :user_id)
    end
end
