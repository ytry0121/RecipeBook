class RecipesController < ApplicationController
  def index
    @recipes=Recipe.all
  end

  def show
    @recipe=Recipe.find(params[:id])
    @ingredients=Ingredient.where("recipe_id = :r",{r: params[:id]}).all
  end

  def new
    @recipe=Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    # @ingredients=Ingredient.where("recipe_id = :r",{r: params[:id]}).all
 end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to root_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title,:description,:serving_for)
  end
end
