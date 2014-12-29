class ShipmentsController < ApplicationController
  
  
  
  def show
    @order = Order.find(params[:order_id])
    @shipment = Shipment.find(params[:id]) 
  end
  
  def index
    @shipments = Shipment.all
    
    respond_to do |format|
      format.html
      format.csv {send_data @shipments.to_csv }
    end
    
  end
  
  def new
    @order = Order.find(params[:order_id])
    @shipment = Shipment.new
  end
  
  def create
    
    @order = Order.find(params[:order_id])
    @shipment = Shipment.new(shipment_params)
    @shipment.order = @order
    
    if @shipment.save
      redirect_to shipments_path
    else
      render 'shipments/new'
    end
  end
  
  
  
  private
  
  def shipment_params
    params.require(:shipment).permit(:service_type, :weight)
  end
  
  
  
end
