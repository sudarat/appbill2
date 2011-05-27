class Quotation < ActiveRecord::Base
  belongs_to :customer
  has_many :quotadescrips ,:dependent => :destroy
  
  validates_presence_of :title,:detail,:terms
  
  #validate do |quotation|
  #  quotation.errors.add_to_base("Project Title can't be blank") if quotation.quo_title.blank?
  #end 
  
  def details_html
    html = ""
    
    quotadescrips.each do |detail|
	html += "<tr valign=middle height=25>
		  <td class=bordertop borderright><font size=2>#{detail.description}</font></td> 
		  <td align= right  class=borderdetail><font size=2>#{detail.quantity}</font></td> 
		  <td align= right class=borderdetail><font size=2><img src=/images/b.jpg , align=left>#{detail.unit_price}.00</font></td> 
		  <td align= right class=bordertop borderleft><font size=2><img src=/images/b.jpg , align=left>#{detail.unit_price*detail.quantity}.00</font></td>
		 </tr>"
    end
    
    return html
  end
  
   def subtotal_html
    subtotal = 0
    
    quotadescrips.each do |detail|
	subtotal += detail.unit_price*detail.quantity
    end
    
    return subtotal
  end
  
  def tax_html
    tax = 0
    
    quotadescrips.each do |detail|
	tax += detail.unit_price*detail.quantity
    end
    
    tax = (tax * 7)/100
    
    return tax
  end
  
  def total_html
    total = 0
    
    quotadescrips.each do |detail|
	total += detail.unit_price*detail.quantity
    end
    
    total = total + ((total * 7)/100)
    
    return total
  end
  
  def showcond
    quotations.each do |quota|
      cond = quota.condition
    end
    return cond
  end
end
