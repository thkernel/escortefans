class UnlikesController < ApplicationController
  before_action :set_unlike, only: %i[ show edit update destroy ]

  # GET /unlikes or /unlikes.json
  def index
    @unlikes = Unlike.all
  end

  # GET /unlikes/1 or /unlikes/1.json
  def show
  end

  # GET /unlikes/new
  def new
    @unlike = Unlike.new
  end

  # GET /unlikes/1/edit
  def edit
  end

  # POST /unlikes or /unlikes.json
  def create
    @unlike = Unlike.new(unlike_params)

    respond_to do |format|
      if @unlike.save
        format.html { redirect_to unlike_url(@unlike), notice: "Unlike was successfully created." }
        format.json { render :show, status: :created, location: @unlike }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unlike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unlikes/1 or /unlikes/1.json
  def update
    respond_to do |format|
      if @unlike.update(unlike_params)
        format.html { redirect_to unlike_url(@unlike), notice: "Unlike was successfully updated." }
        format.json { render :show, status: :ok, location: @unlike }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unlike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unlikes/1 or /unlikes/1.json
  def destroy
    @unlike.destroy

    respond_to do |format|
      format.html { redirect_to unlikes_url, notice: "Unlike was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unlike
      @unlike = Unlike.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unlike_params
      params.require(:unlike).permit(:uid, :sender_id, :recipient_id, :remove_at)
    end
end
