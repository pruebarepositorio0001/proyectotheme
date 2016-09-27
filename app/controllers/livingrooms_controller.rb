class LivingroomsController < ApplicationController
  before_action :set_livingroom, only: [:show, :edit, :update, :destroy]
  before_action :set_local
  
  respond_to :html
  
  # GET /livingrooms
  # GET /livingrooms.json
  def index
    #@livingrooms = Livingroom.all
    @livingrooms  = @local.livingrooms
    respond_with(@local, @livingrooms)
  end

  # GET /livingrooms/1
  # GET /livingrooms/1.json
  def show
    respond_with(@local, @livingroom)
  end

  # GET /livingrooms/new
  def new
    #@livingroom = Livingroom.new
    @livingroom = @local.livingrooms.new
    respond_with(@local, @livingroom)
  end

  # GET /livingrooms/1/edit
  def edit
  end

  # POST /livingrooms
  # POST /livingrooms.json
  def create
    @livingroom = @local.livingrooms.new(livingroom_params)
    @livingroom.save
    respond_with(@livingroom)
    #@livingroom = Livingroom.new(livingroom_params)

    #respond_to do |format|
     # if @livingroom.save
      #  format.html { redirect_to @livingroom, notice: 'Livingroom was successfully created.' }
       # format.json { render :show, status: :created, location: @livingroom }
      #else
       # format.html { render :new }
        #format.json { render json: @livingroom.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # PATCH/PUT /livingrooms/1
  # PATCH/PUT /livingrooms/1.json
  def update
    @livingroom.update(livingroom_params)
    respond_with(@local)
  end

  # DELETE /livingrooms/1
  # DELETE /livingrooms/1.json
  def destroy
    @livingroom.destroy
    respond_with(@livingroom)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_livingroom
      @livingroom = Livingroom.find(params[:id])
    end
    def set_local
      @local = Local.find(params[:local_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def livingroom_params
      params.require(:livingroom).permit(:name, :capacity, :state, :local_id)
    end
end
