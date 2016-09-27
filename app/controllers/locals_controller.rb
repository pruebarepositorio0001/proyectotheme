class LocalsController < ApplicationController
  before_action :set_local, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  respond_to :html
  def index
    @locals = @user.locals
    respond_with(@user, @locals)
  end
  def show
    respond_with(@user,@local)
  end
  def new
    @local = @user.locals.new
    respond_with(@user,@local)
  end
  def edit
  end
  def create
    @local = @user.locals.new(local_params)
    @local.save
    #respond_with(@user)
    respond_with(@local)
  end
  def update
    @local.update(local_params)
    respond_with(@local)
  end
  def destroy
    @local.destroy
    respond_with(@user)
  end

  private
    def set_local
      @local = Local.find(params[:id])
    end
    def set_user
      @user = User.find(params[:user_id])
    end
    def local_params
      params.require(:local).permit(:name, :description, :state, :user_id)
    end
end