class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    category = Category.new
    category.name = params[:name]
    category.save
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
  end
end
