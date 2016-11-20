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

  private

    def cat_params
      params.require(:category).permit(:name)
    end

end
