module ApplicationHelper
  
  def logo
    image_tag("codeapp.jpeg",:alt => "Sample App" , :class => "round",:width => "160",:height => "60")
  end
  
  def edit
    image_tag("icon-edit.gif",:alt => "Edit",:title => "edit",:width => "25",:height => "25")
  end
  
  def show
    image_tag("icon-show.gif",:alt => "Show",:title => "show",:width => "25",:height => "25")
  end
  
  def delete
    image_tag("icon-delete.gif",:title => "delete",:alt => "Delete",:width => "25",:height => "25")
  end
  
  def ok
    image_tag("icon-ok.png",:alt => "OK",:title => "select",:width => "25",:height => "25")
  end
  
  def editdesc
    image_tag("icon-edit.gif",:alt => "Edit",:title => "edit",:width => "20",:height => "20")
  end
  
  def deletedesc
    image_tag("icon-delete.gif",:title => "delete",:alt => "Delete",:width => "20",:height => "20")
  end

  def newcustomer
    image_tag("icon-addcustomer.jpeg",:title => "new customer",:alt => "new customer",:width => "25",:height => "25")
  end
  
  def newquotation
    image_tag("icon-addcustomer.jpeg",:title => "new quotation",:alt => "new",:width => "25",:height => "25")
  end
  
  def newinvoice
    image_tag("icon-addcustomer.jpeg",:title => "new invoice",:alt => "new",:width => "25",:height => "25")
  end
  
  def newreceipt
    image_tag("icon-addcustomer.jpeg",:title => "new receipt",:alt => "new",:width => "25",:height => "25")
  end
  
  def newbill
    image_tag("icon-addcustomer.jpeg",:title => "new bill",:alt => "new",:width => "25",:height => "25")
  end
  
  def back
    image_tag("icon-back.jpg",:title => "back",:alt => "back",:width => "25",:height => "25")
  end
  
  def print
    image_tag("icon-print.jpeg",:title => "print",:alt => "print",:width => "25",:height => "25")
  end
  
  def h_home
    image_tag("/images/head/home1.jpg",:alt => "home",:onmouseover =>"this.src='/images/head/home2.jpg';" ,:onmouseout => "this.src='/images/head/home1.jpg';",:class=>"roundf")
  end 
  
  def h_customer
    image_tag("/images/head/customer1.jpg",:alt => "customer",:onmouseover =>"this.src='/images/head/customer2.jpg';" ,:onmouseout => "this.src='/images/head/customer1.jpg';")
  end
  
  def h_quota
    image_tag("/images/head/quota1.jpg",:alt => "quotation",:onmouseover =>"this.src='/images/head/quota2.jpg';" ,:onmouseout => "this.src='/images/head/quota1.jpg';")
  end
  
  def h_inv
    image_tag("/images/head/inv1.jpg",:alt => "home",:onmouseover =>"this.src='/images/head/inv2.jpg';" ,:onmouseout => "this.src='/images/head/inv1.jpg';")
  end
  
  def h_bill
    image_tag("/images/head/bill1.jpg",:alt => "home",:onmouseover =>"this.src='/images/head/bill2.jpg';" ,:onmouseout => "this.src='/images/head/bill1.jpg';")
  end
  
  def h_tax
    image_tag("/images/head/tax1.jpg",:alt => "home",:onmouseover =>"this.src='/images/head/tax2.jpg';" ,:onmouseout => "this.src='/images/head/tax1.jpg';",:class=>"roundl")
  end
  
  def foot
    image_tag("foot.jpg")
  end
  
  def B
    image_tag("b.jpg")
  end

  
end
