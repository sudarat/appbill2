class Invoicedescrip < ActiveRecord::Base
  belongs_to :invoice
  
  #validates_presence_of :description,:quantity,:unit_price
  
  validate do |invoive|
    invoive.errors.add_to_base("Description wrong") if invoive.description == "Description"
    invoive.errors.add_to_base("Description can't be blank") if invoive.description.blank?
    invoive.errors.add_to_base("Quantity not '0'") if invoive.quantity == 0
    invoive.errors.add_to_base("Quantity can't be blank") if invoive.quantity.blank?
    invoive.errors.add_to_base("Unit Price not '0'") if invoive.unit_price == 0
    invoive.errors.add_to_base("Unit Price can't be blank") if invoive.unit_price.blank?
  end
end
