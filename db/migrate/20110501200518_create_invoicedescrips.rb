class CreateInvoicedescrips < ActiveRecord::Migration
  def self.up
    create_table :invoicedescrips do |t|
      t.string :description
      t.integer :quantity
      t.integer :unit_price
      t.references :invoice

      t.timestamps
    end
  end

  def self.down
    drop_table :invoicedescrips
  end
end
