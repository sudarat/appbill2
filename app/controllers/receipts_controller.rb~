class ReceiptsController < ApplicationController
      
  def index
    @receipts = Receipt.all
  end
  
  def new
    @customer  = Customer.find(params[:customer_id])
    @receipt = @customer.receipts.new
  end
  
  def create
    @customer  = Customer.find(params[:customer_id])
    @receipt = @customer.receipts.create(params[:receipt])
    
    respond_to do |format|
      if @receipt.save
        format.html { redirect_to edit_customer_receipt_path(@customer,@receipt), :notice => 'Receipt was successfully created.' }
      else
        format.html { render :action => "new" }
        #format.xml  { render :xml => @customer.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @receipt = @customer.receipts.find(params[:id])
    @receipt.destroy
    redirect_to receipts_path,:notice => 'Receipt delete.'
  end
  
  def edit
    @customer = Customer.find(params[:customer_id])
    @receipt = @customer.receipts.find(params[:id])
  end
  
  def show
    @customer = Customer.find(params[:customer_id])
    @receipt = @customer.receipts.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @receipt }
    end
  end
    
  def update 
    @customer = Customer.find(params[:customer_id])
    @receipt = Receipt.find(params[:id])
    
    if @receipt.update_attributes(params[:receipt])
      redirect_to(receipts_path, :notice => 'Receipt was successfully updated.')
    else
      render :action => "edit"
    end      
  end
  
  def print
    
    @customer = Customer.find(params[:customer_id])
    @receipt = @customer.receipts.find(params[:id])
    render :layout => 'print'
  end
  
  def newreceipt
    @customer = Customer.find(params[:customer_id])
    @receipt = @customer.receipts.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end
end
