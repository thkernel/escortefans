class EscortCategoriesController < ApplicationController
  before_action :set_escort_category, only: %i[ show edit update destroy ]

  # GET /escort_categories or /escort_categories.json
  def index
    @escort_categories = EscortCategory.all
  end

  # GET /escort_categories/1 or /escort_categories/1.json
  def show
  end

  # GET /escort_categories/new
  def new
    @escort_category = EscortCategory.new
  end

  # GET /escort_categories/1/edit
  def edit
  end

  # POST /escort_categories or /escort_categories.json
  def create
    @escort_category = EscortCategory.new(escort_category_params)

    respond_to do |format|
      if @escort_category.save
        format.html { redirect_to escort_category_url(@escort_category), notice: "Escort category was successfully created." }
        format.json { render :show, status: :created, location: @escort_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @escort_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /escort_categories/1 or /escort_categories/1.json
  def update
    respond_to do |format|
      if @escort_category.update(escort_category_params)
        format.html { redirect_to escort_category_url(@escort_category), notice: "Escort category was successfully updated." }
        format.json { render :show, status: :ok, location: @escort_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @escort_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /escort_categories/1 or /escort_categories/1.json
  def destroy
    @escort_category.destroy

    respond_to do |format|
      format.html { redirect_to escort_categories_url, notice: "Escort category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_escort_category
      @escort_category = EscortCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def escort_category_params
      params.require(:escort_category).permit(:name, :description, :status)
    end
end
