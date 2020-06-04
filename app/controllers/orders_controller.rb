class OrdersController < ApplicationController
  def index
    @orders = Order.where(user: current_user)
  end

  def my_orders
    @order = Order.where(user: current_user)
  end


  def new
    @item = Item.find(params[:item_id])
    @order = Order.new
  end

  def create
    @item = Item.find(params[:item_id])
    @order = Order.new
    @order.item = @item
    @order.user = current_user
    @order.status = "SOLD"
    @item.sold = true
    @item.save
    @order.save
    redirect_to orders_path
  end

  def show
    @order=Order.find(params[:id])
  end

end
