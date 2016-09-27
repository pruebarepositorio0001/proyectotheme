class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_local
  
  respond_to :html
  
  # GET /Products
  # GET /Products.json
  def index
    #@Products = Product.all
    @products  = @local.products
    respond_with(@local, @products)
  end

  # GET /Products/1
  # GET /Products/1.json
  def show
    respond_with(@local, @product)
  end

  # GET /Products/new
  def new
    #@Product = Product.new
    @product = @local.products.new
    respond_with(@product)
  end

  # GET /Products/1/edit
  def edit
  end

  # POST /Products
  # POST /Products.json
  def create
    @product = @local.products.new(product_params)
    @product.save
    respond_with(@local)
    #@Product = Product.new(Product_params)

    #respond_to do |format|
     # if @Product.save
      #  format.html { redirect_to @Product, notice: 'Product was successfully created.' }
       # format.json { render :show, status: :created, location: @Product }
      #else
       # format.html { render :new }
        #format.json { render json: @Product.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # PATCH/PUT /Products/1
  # PATCH/PUT /Products/1.json
  def update
    @product.update(product_params)
    respond_with(@local,@product)
  end

  # DELETE /Products/1
  # DELETE /Products/1.json
  def destroy
    @product.destroy
    respond_with(@local)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
    def set_local
      @local = Local.find(params[:local_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :capacity, :state, :local_id)
    end
end
