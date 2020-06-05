class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @items = Item.where(sql_query, query: "%#{params[:query]}%")
    else
      @items = Item.all
    end

  end

  def my_items
    @items = Item.where(user: current_user)
    @orders = Order.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def user_items
    @user = User.find(params[:user_id])
    @items = Item.where(user_id: params[:user_id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if  @item.save
      redirect_to item_path(@item)
    else
      render :new
    end

  end

  def edit

  end

  def update

  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :photo)
  end

end

