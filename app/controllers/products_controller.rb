class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json

  def like_create
    @product = Product.find(params[:likeable_id])
    like = Like.find_or_initialize_by(likeable_id: params[:likeable_id], :likeable_type=>@product.class.name.constantize,:user_id=>current_user.id)
    if like.like
      like.destroy
    else
      like.like = true
      like.save
    end
    redirect_to product_path(@product)
  end

   def download_products
    @products = Product.all

    pdf = WickedPdf.new.pdf_from_string(
    render_to_string('products/index.html.erb', layout: false)
    )
    send_data pdf, :filename => "products.pdf", :type => "application/pdf", :disposition => "attachment"
  end

  def index
    @products = Product.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportPdf.new(@products)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
      end
    end

  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.save!
    redirect_to root_path
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :desc, :address, :user_id, {image: []})
    end
end
