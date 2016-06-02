class ProductsController < ApplicationController
  before_filter :initialize_cart
  before_action :authenticate_seller!, only: [:new, :edit, :update, :create, :destroy]


  def index
    @products = Product.all
  end

  def create
    product = Product.new
    product.name = params[:name]
    product.image = params[:image]
    product.size = params[:size]
    product.price = params[:price]
    product.description = params[:description]
    product.category_id = params[:category]
    product.user_id = current_user.id
    if product.save
      redirect_to "/products/#{ params[:id] }"
    else
      puts "error"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name]
    @product.image = params[:image]
    @product.size = params[:size]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.category_id = params[:category]
    @product.user_id = current_user.id
    @product.save

  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
  end

end
