class CreateQuotations < ActiveRecord::Migration
  def self.up
    create_table :quotations do |t|
      t.string :title
      t.text :detail
      t.integer :terms
      t.text :condition
      t.references :customer

      t.timestamps
    end
  end

  def self.down
    drop_table :quotations
  end
end
