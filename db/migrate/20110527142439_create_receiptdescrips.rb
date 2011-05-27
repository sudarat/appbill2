class CreateReceiptdescrips < ActiveRecord::Migration
  def self.up
    create_table :receiptdescrips do |t|
      t.string :description
      t.integer :quantity
      t.integer :unit_price
      t.references :receipt

      t.timestamps
    end
  end

  def self.down
    drop_table :receiptdescrips
  end
end
