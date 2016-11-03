class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :paypal]

  # GET /products
  # GET /products.json

  def express
    PayPal::SDK.configure({
      :mode => "sandbox", 
      :username => "jb-us-seller_api1.paypal.com", 
      :password => "WX4WTU3S8MY44S7F", 
      :signature => "AFcWxV21C7fd0v3bYYYRCpSSRl31A7yDhhsPUU2XhtMoZXsWHFxu-RWy"
    })
    @api = PayPal::SDK::Merchant::API.new
    @set_express_checkout = @api.build_set_express_checkout({
      :Version => "104.0",
      :SetExpressCheckoutRequestDetails => {
      :ReturnURL => "http://localhost:4000",
      :CancelURL => "http://localhost:4000",
      :PaymentDetails =>[{
      :OrderTotal =>{
      :currencyID => "USD",
      :value => "1.00"},
      :PaymentAction => "Sale"}]}})
    @set_express_checkout_response = @api.set_express_checkout(@set_express_checkout) 
      if @set_express_checkout_response.success?
        @set_express_checkout_response.CorrelationID
        flash[:notice] = "Successfully charged"
      else
        @set_express_checkout_response.Errors
      end
      redirect_to :back

  end

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
    @payment = Payment.new
    @creditcard = ActiveMerchant::Billing::CreditCard.new
    
  end


  def payment_create
    ActiveMerchant::Billing::Base.mode = :test
    gateway = ActiveMerchant::Billing::AuthorizeNetGateway.new(:login=> ' API Login ID',:password => 'Transaction Key')
    @payment = Payment.new(amount: params[:payment][:amount])
    @creditcard = ActiveMerchant::Billing::CreditCard.new(first_name: params[:creditcard][:first_name] ,last_name: params[:creditcard][:name], number: params[:creditcard][:number], month: params[:creditcard][:month], year: params[:creditcard][:year], verification_value: params[:creditcard][:verification_value].to_i)
    if @creditcard.validate.empty?
      @response = gateway.purchase(@payment.amount, @creditcard)
      byebug
      if @response.success?
        flash[:notice] = "Successfully charged $#{sprintf("%.2f", @payment.amount )} to the credit card #{@creditcard.number}"
      else
        raise StandardError, @response.message
      end
    end

    redirect_to :back
  end

def paypal
  if @product.present?
      redirect_to @product.paypal_url(@product)
    end
  end
  
# get all responce in params and save in your table
  def paypal_callback
    binding.pry

    # @user = User.find(params[:invoice]) rescue ""
    # if @user.present?
    #   @transaction_detail = @user.transaction_details.new(
    #     plan_id: params[:custom],
    #     payer_id: params[:payer_id],
    #     payer_email: params[:payer_email],
    #     payment_date: params[:payment_date],
    #     payment_status: params[:payment_status],
    #     payment_fee: params[:payment_fee],
    #     payment: params[:payment_gross],
    #     payment_type: params[:payment_type],
    #     mc_currency: params[:mc_currency],
    #     first_name: params[:first_name],
    #     last_name: params[:last_name],
    #     txn_id: params[:txn_id],
    #     receiver_id: params[:receiver_id],
    #     receiver_email: params[:receiver_email],
    #     address_name: params[:address_name],
    #     address_street: params[:address_street],
    #     address_city: params[:address_city],
    #     address_state: params[:address_state],
    #     address_country: params[:address_country],
    #     address_country_code: params[:address_country_code],
    #     address_zip: params[:address_zip]
    #   )
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

    def payment_params
      params.require(:payment).permit(:amount, :status, :transaction_number)
    end
end
