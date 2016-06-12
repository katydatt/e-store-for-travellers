module Api
  class ProductsController < ApplicationController
    before_filter :initialize_cart
    before_action :authenticate_seller!, only: [:new, :edit, :update, :create, :destroy]

    def index
      @products= Product.all
      render json: @products.to_json, status: 201
    end

    def show
      @product = Product.find(params[:id])
      render json: @product.to_json, status: 201

    end

    def create
      product = Product.new
      product.name = params[:name]
      product.image = params[:image]
      product.size = params[:size]
      product.description = params[:description]
      product.price = params[:price]
      product.category_id = params[:category]
      product.user_id = current_user.id
      product.save
      render json: product.to_json, status: 201

    end

    def update
      @product = Product.find(params[:id])
      @product.name = params[:name]
      @product.image = params[:image]
      @product.size = params[:size]
      @product.description = params[:description]
      @product.price = params[:price]
      @product.category_id = params[:category]
      @product.user_id = current_user.id
      render json: @product.to_json, status: 201

    end

    def destroy
      product = Product.find(params[:id])
      product.destroy
      render json: product.to_json, status: 201

    end
  end

end
