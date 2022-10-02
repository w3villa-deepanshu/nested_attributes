class CategoriesController < ApplicationController
  before_action :set_categories, only: %i[show edit update destroy]

  def index
    @categories = Category.all
  end
  
  def show
    
  end
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render :new
    end  
  end

  def edit
    
  end

  def update
    if @category.update(category_params)
      flash[:notice] = "category created successfully"
      redirect_to @category
    else
      flash[:error] = @category.errors.full_messages
      render :edit
    end   
  end
  
  def destroy
    @category.destroy
    redirect_to root_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_categories
    @category = Category.find(params[:id])
  end

end
