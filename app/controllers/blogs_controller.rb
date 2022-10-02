class BlogsController < ApplicationController

  before_action :set_blogs, only: %i[show edit update destroy]
  before_action :show_categories

  def index
      @blogs = Blog.all
      @tags = Tag.all
  end
  
  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog
    else
      render :new
    end  
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
        redirect_to @blog
    else
        render :edit
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title,:description,:category_id,tags_attributes: [:id,:name,:_destroy])
  end

  def set_blogs
    @blog  = Blog.find(params[:id])
  end

  def show_categories
    @categories = Category.all.order(:name)
  end

end
