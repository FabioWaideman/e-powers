class ProductsController < ApplicationController
  before_action :set_product, only: %i[edit update show destroy]

  def new
    @product = Product.new
  end

  def create
    @user = current_user
    @product = Product.new(product_params)
    @product.user = @user = current_user

    if @product.save
      redirect_to @product, notice: "Superpower was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "Superpower was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def index
    @products = Product.all
  end

  def show; end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :category, :price)
  end
end
