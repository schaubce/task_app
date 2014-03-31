class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end
  
  def show
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:success] = "created category"
      redirect_to show_task_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

end
