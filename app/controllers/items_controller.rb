class ItemsController < ApplicationController
  
  def add_cart
    session[:cart] ||= {}
    item = Item.where(:id => params[:id]).first
    if item
      session[:cart][item.id] ||= 0
      session[:cart][item.id] += 1
    end
    render :json => {[:counter] => session[:cart].length}.to_json
  end
  # GET /items
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])

  end
end
