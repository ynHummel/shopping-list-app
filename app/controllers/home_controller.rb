class HomeController < ApplicationController
  def index
    @items = ShoppingItem.all
  end
end