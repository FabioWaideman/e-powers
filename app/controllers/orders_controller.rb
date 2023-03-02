class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @user = User.find(params[:user_id])
    @product = Product.new(product_params)
  end
end

