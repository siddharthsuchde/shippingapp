class OrdersController < ApplicationController
  
  def index
    @orders = Order.all
  end
  
  def show
  end
  
  def new 
    @order = Order.new
  end
  
  def create 
    
    @order = Order.new(order_params)
    
    if @order.save
      redirect_to root_path
    else
      render :new
    end
    
  end
  
  def edit
    @order = Order.find(params[:id])
  end
  
  def update
  end
  
  private
  
  def order_params
    params.require(:order).permit(:product_name, :address, :payment)
  end
  
  
  
end
