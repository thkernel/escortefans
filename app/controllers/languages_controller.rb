class LanguagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_language, only: %i[ show edit update destroy ]

  # GET /languages or /languages.json
  def index
    @languages = Language.all
  end

  # GET /languages/1 or /languages/1.json
  def show
  end

  def language
    uid = params[:uid]
    user = User.find_by(uid: uid)
    
    if user.present? && user.language.present?
      @language = user.language
    else
      @language = Language.new
    end
    
    
    @languages = []
    
    LanguageList::COMMON_LANGUAGES.each do |language|
      @languages << [language.name]
    end
    
    language_items = @current_user.language.language_items if current_user.language.present?

    @selected_languages = language_items unless language_items.blank?

    
  end


  # GET /languages/new
  def new

    
    @language = Language.new
  end

  # GET /languages/1/edit
  def edit
    
  end

  # POST /languages or /languages.json
  def create
    @language = current_user.build_language(language_params)

     # Create Scholarship study levels
     params[:language_items][:names].each do |language_item|
      unless language_item.empty?
        @language.language_items.build(name: language_item)
      end
    end


    respond_to do |format|
      if @language.save
        format.html { redirect_to language_url(@language), notice: "Language was successfully created." }
        format.json { render :show, status: :created, location: @language }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /languages/1 or /languages/1.json
  def update
    @language.language_items.delete_all
     # Create Scholarship study levels
     params[:language_items][:names].each do |language_item|
      unless language_item.empty?
        @language.language_items.build(name: language_item)
      end
    end


    respond_to do |format|
      if @language.update(language_params)
        @profile = current_user.profile
        format.html { redirect_to language_url(@language), notice: "Language was successfully updated." }
        format.json { render :show, status: :ok, location: @language }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /languages/1 or /languages/1.json
  def destroy
    @language.destroy

    respond_to do |format|
      format.html { redirect_to languages_url, notice: "Language was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language
      @language = Language.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def language_params
      params.require(:language).permit(:uid, language_items: [:name])
    end
end
