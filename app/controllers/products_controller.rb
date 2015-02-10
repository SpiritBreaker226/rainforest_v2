class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(param[:id])
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)

  	@product.save ? redirect_to(products_path) : render(:new)
  end

  def edit
  	@product = Product.find(param[:id])
  end

  def update
  	@product = Product.find(param[:id])

  	@product.update_attributtes(product_param) ? redirect_to(product_path(@product)) : render(:edit)
  end

  def destroy
  	@product = Product.find(param[:id])
  	@product.destroy
  	redirect_to(products_path)
  end

  private

  def product_params
  	params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
