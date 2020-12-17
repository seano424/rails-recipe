class DashesController < ApplicationController
  def new
    @dash = Dash.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @dash = Dash.new(dash_params)
    @recipe = Recipe.find(params[:recipe_id])
    @dash.recipe = @recipe
    if @dash.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def destroy
    @dash.destroy
    redirect_to recipe_path(@dash.recipe)
  end

  private

  def dash_params
    params.require(:dash).permit(:description, :ingredient_id)
  end

  def set_dash
    @dash = Dash.find(params[:id])
  end
end
