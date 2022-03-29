class UserViewsController < ApplicationController
  before_action :set_user_view, only: %i[ show edit update destroy ]

  # GET /user_views or /user_views.json
  def index
    @user_views = UserView.all
  end

  # GET /user_views/1 or /user_views/1.json
  def show
  end

  # GET /user_views/new
  def new
    @user_view = UserView.new
  end

  # GET /user_views/1/edit
  def edit
  end

  # POST /user_views or /user_views.json
  def create
    @user_view = UserView.new(user_view_params)

    respond_to do |format|
      if @user_view.save
        format.html { redirect_to user_view_url(@user_view), notice: "User view was successfully created." }
        format.json { render :show, status: :created, location: @user_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_views/1 or /user_views/1.json
  def update
    respond_to do |format|
      if @user_view.update(user_view_params)
        format.html { redirect_to user_view_url(@user_view), notice: "User view was successfully updated." }
        format.json { render :show, status: :ok, location: @user_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_views/1 or /user_views/1.json
  def destroy
    @user_view.destroy

    respond_to do |format|
      format.html { redirect_to user_views_url, notice: "User view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_view
      @user_view = UserView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_view_params
      params.require(:user_view).permit(:uid, :user_id)
    end
end
