class LanguageItemsController < ApplicationController
  before_action :set_language_item, only: %i[ show edit update destroy ]

  # GET /language_items or /language_items.json
  def index
    @language_items = LanguageItem.all
  end

  # GET /language_items/1 or /language_items/1.json
  def show
  end

  # GET /language_items/new
  def new
    @language_item = LanguageItem.new
  end

  # GET /language_items/1/edit
  def edit
  end

  # POST /language_items or /language_items.json
  def create
    @language_item = LanguageItem.new(language_item_params)

    respond_to do |format|
      if @language_item.save
        format.html { redirect_to language_item_url(@language_item), notice: "Language item was successfully created." }
        format.json { render :show, status: :created, location: @language_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @language_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /language_items/1 or /language_items/1.json
  def update
    respond_to do |format|
      if @language_item.update(language_item_params)
        format.html { redirect_to language_item_url(@language_item), notice: "Language item was successfully updated." }
        format.json { render :show, status: :ok, location: @language_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @language_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_items/1 or /language_items/1.json
  def destroy
    @language_item.destroy

    respond_to do |format|
      format.html { redirect_to language_items_url, notice: "Language item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_item
      @language_item = LanguageItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def language_item_params
      params.require(:language_item).permit(:uid, :language_id, :name)
    end
end
