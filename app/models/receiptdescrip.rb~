class Receiptdescrip < ActiveRecord::Base
  belongs_to :receipt
  
  validate do |receipt|
    receipt.errors.add_to_base("Description wrong") if receipt.description == "Description"
    receipt.errors.add_to_base("Description can't be blank") if receipt.description.blank?
    receipt.errors.add_to_base("Quantity not '0'") if receipt.quantity == 0
    receipt.errors.add_to_base("Quantity can't be blank") if receipt.quantity.blank?
    receipt.errors.add_to_base("Unit Price not '0'") if receipt.unit_price == 0
    receipt.errors.add_to_base("Unit Price can't be blank") if receipt.unit_price.blank?
  end
end
