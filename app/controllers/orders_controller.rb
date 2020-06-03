class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to
  end

  def show
    @order=Order.find(params[:id])
  end


private
def order_params
  params.require(:order).permit(:status, :user_id, :item_id)
end
  
end
