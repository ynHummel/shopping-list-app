class ShoppingItemsController < ApplicationController

  def new
    @shopping_item = ShoppingItem.new
  end

  def create
    shopping_item = ShoppingItem.create(shopping_item_params)
    redirect_to root_path
  end

  def show
    @shopping_item = ShoppingItem.find(params[:id])
  end

  def edit
    @shopping_item = ShoppingItem.find(params[:id])
  end

  def update
    shopping_item = ShoppingItem.find(params[:id])
    shopping_item.update(shopping_item_params)
    redirect_to root_path
  end

  def destroy
    shopping_item = ShoppingItem.find(params[:id])
    shopping_item.destroy
    redirect_to root_path
  end

  private
  def shopping_item_params
    params.require(:shopping_item).permit(:name, :description, :price, :acquired)
  end

end