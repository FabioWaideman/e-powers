class OrdersController < ApplicationController
  before_action :set_product, only: %i[new create]

  def new
    @order = Order.new
    authorize @order
  end

  def create
    @order = Order.new(user: current_user, product: @product)
    authorize @order
    if @order.save
      redirect_to @product, notice: 'Power was successfully added to your body.'
    else
      flash[:alert] = 'You already have this power!'
      redirect_to root_path
    end
  end

  def index
    @orders = Order.all
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end
end
