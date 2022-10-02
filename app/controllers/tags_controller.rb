class TagsController < ApplicationController
before_action :show_tags, only: %i[show edit update destroy] 
  def index
    @tags = Tag.all
  end

  
  def show
  end

  def edit
  end

  def new
    @tag  =Tag.new
  end

  def create
    @tag  =Tag.new(tags_params)
    if @tag.save
      redirect_to @tag
    else
      render :new
    end

  end
  
  def update
    if @tag.update(tags_params)
      redirect_to @tag
    else
      render :edit
    end
  end
  private

  def show_tags
    @tag = Tag.find(params[:id])
  end
  def tags_params
    params.require(:tag).permit(:name)
  end
end
