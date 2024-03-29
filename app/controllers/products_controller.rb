class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    if params[:sort].blank?
      @products = Product.order(created_at: :desc)
    else
      @products = Product.order(params[:sort])
    end  
    @order_item =current_order.order_items.new
    @ps=Product.all
    
    start_date="#{params[:q] }-01"
    end_date="#{params[:q] }-31"
    sql="select * from order_items where cast(created_at as date) between ? and ?", start_date, end_date
    @os = OrderItem.find_by_sql(sql)
    @tot=0



    respond_to do |format|
    format.xlsx {
    response.headers[
          'Content-Disposition'
        ] = 'attachment; filename="products.xlsx"'
      }
      format.html { render :index }
    end
  end

  # GET /products/1 or /products/1.json
  def show
    @feedback=Feedback.where(product_id: params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  def initialize_session
    session[:cart] ||=[]
  end
  # POST /products or /products.json
  def create
    @product = Product.new(product_params)
   #@product.user =current_user.admin
   
    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :stock, :image, :user_id)
    end
end
