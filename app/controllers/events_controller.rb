class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  
  respond_to :html
  # GET /events
  # GET /events.json
  def index
    #@events = Event.all
    @events = @user.events
    respond_with(@user, @events)
  end

  # GET /events/1
  # GET /events/1.json
  def show
    respond_with(@user,@event)
  end

  # GET /events/new
  def new
    #@event = Event.new
    @event = @user.events.new
    respond_with(@user,@event)
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    #@event = Event.new(event_params)
     # if @event.save
    @event = @user.events.new(event_params)
    @event.save
    #respond_with(@user)
    respond_with(@user,@event)
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event.update(event_params)
    respond_with(@user,@event)
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
     @event.destroy
    respond_with(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end
    
    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :date, :description, :capacity, :user_id)
    end
end
