class Billdescrip < ActiveRecord::Base
  belongs_to :bill
  #validates_presence_of :description,:quantity,:unit_price
  
  validate do |bill|
    bill.errors.add_to_base("Description wrong") if bill.description == "Description"
    bill.errors.add_to_base("Description can't be blank") if bill.description.blank?
    bill.errors.add_to_base("Quantity not '0'") if bill.quantity == 0
    bill.errors.add_to_base("Quantity can't be blank") if bill.quantity.blank?
    bill.errors.add_to_base("Unit Price can't be blank") if bill.unit_price.blank?
  end
end
