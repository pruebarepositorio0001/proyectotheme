class ReservesController < ApplicationController
  before_action :set_reserf, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  
  respond_to :html

  # GET /reserves
  # GET /reserves.json
  def index
    #@reserves = Reserf.all
    @reserves = @user.reserves
    respond_with(@user, @reserves)
  end

  # GET /reserves/1
  # GET /reserves/1.json
  def show
  end

  # GET /reserves/new
  def new
    #@reserf = Reserf.new
    @reserf_param = @user.reserves.new
    respond_with(@user,@reserf)
  end

  # GET /reserves/1/edit
  def edit
  end

  # POST /reserves
  # POST /reserves.json
  def create
    @reserf = @user.reserves.new(reserf_params)
    @reserf.save
    respond_with(@reserf)
  end

  # PATCH/PUT /reserves/1
  # PATCH/PUT /reserves/1.json
  def update
    @reserf.update(reserf_params)
    respond_with(@user,@reserf)
  end

  # DELETE /reserves/1
  # DELETE /reserves/1.json
  def destroy
    @reserf.destroy
    respond_with(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserf
      @reserf = Reserf.find(params[:id])
    end
    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserf_params
      params.require(:reserf).permit(:name, :date, :description, :user_id)
    end
end