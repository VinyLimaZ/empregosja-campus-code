class CategoriesController < ApplicationController

  def show
    @category = Category.find params[:id]
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.new cat_params

    if category.save
      redirect_to category_path(category)
      flash.now[:msg] = 'Categoria criada com sucesso'
    end
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.new cat_params
    if @category.save
      flash.now[:notice] = 'Categoria atualizada com sucesso'
      render :show
    else
      flash.now[:notice] = 'Não foi possível atualizar a categoria'
      render :edit
    end
  end

  private

    def cat_params
      params.require(:category).permit(:name)
    end

end
