
class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "#{@category.title} created!"
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    if @category.save
      flash[:success] = "#{@category.title} has been updated!"
      redirect_to category_path(@category)
    else
      render :edit
    end
  end

  def destroy
    category = Category.find(params[:id]).destroy
    flash[:success] = "#{category.title} was successfully deleted!"
    redirect_to categories_path
  end


  private

  def category_params
    params.require(:category).permit(:title)
  end

end
