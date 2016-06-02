module Api
  class CategoriesController < ApplicationController
    def index
      @categories = Category.all
      render json: @categories.to_json, status: 201
    end

    def show
      @category = Category.find(params[:id])
      render json: @category.to_json, status: 201

    end

    def create
      category = Category.new
      category.name = params[:name]
      category.save
      render json: category.to_json, status: 201
    end

    def destroy
      category = Category.find(params[:id])
      category.destroy
      render json: category.to_json, status: 201

    end
  end

end
