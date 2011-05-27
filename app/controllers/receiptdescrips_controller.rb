class ReceiptdescripsController < ApplicationController
    
    def show
    @customer = Customer.find(params[:customer_id])
    @receipt = Receipt.find(params[:receipt_id])
    @receiptdescrip = @receipt.receiptdescrips.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @receipt }
    end
  end
  
  def create
    @customer = Customer.find(params[:customer_id])
    @receipt = Receipt.find(params[:receipt_id])
    @receiptdescrip = @receipt.receiptdescrips.create(params[:receiptdescrip])
    
    respond_to do |format|
      if @receiptdescrip.save
        format.html {redirect_to edit_customer_receipt_path(@customer,@receipt), :notice => 'Description was successfully created.'}
      else
        format.html { redirect_to edit_customer_receipt_path(@customer,@receipt), :notice => 'Description Error.'}
      end
    end
  end
  
  def edit
    @customer = Customer.find(params[:customer_id])
    @receipt = Receipt.find(params[:receipt_id])
    @receiptdescrip = @receipt.receiptdescrips.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:customer_id])
    @receipt = Receipt.find(params[:receipt_id])
    @receiptdescrip = @receipt.receiptdescrips.find(params[:id])
    if @receiptdescrip.update_attributes(params[:receiptdescrip])
      redirect_to edit_customer_receipt_path(@customer,@receipt), :notice => 'Description was successfully updated.'
    else
      redirect_to edit_customer_receipt_receiptdescrip_path(@customer,@receipt,@receiptdescrip), :notice => 'Description Error.'
    end
      
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @receipt = Receipt.find(params[:receipt_id])
    @receiptdescrip = @receipt.receiptdescrips.find(params[:id])
    @receiptdescrip.destroy
    respond_to do |format|
        format.html {redirect_to edit_customer_receipt_path(@customer,@receipt), :notice => 'Description delete.'}    
    end
  end
end

