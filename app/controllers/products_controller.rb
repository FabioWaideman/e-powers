class ProductsController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index show]

  before_action :set_product, only: %i[edit update show destroy]

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product

    if @product.save
      redirect_to product_path(@product), notice: "Superpower was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @product
  end

  def update
    authorize @product
    if @product.update(product_params)
      redirect_to @product, notice: "Superpower was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def index
    if params[:query].present?
      @products = Product.global_search(params[:query])
    else
      @products = policy_scope(Product)
    end
  end

  def show
    authorize @product
  end

  def destroy
    @product = Product.find(params[:id])
    authorize @product
    @product.destroy
    redirect_to products_path, notice: "Super power successfully deleted"
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :category, :price)
  end
end
