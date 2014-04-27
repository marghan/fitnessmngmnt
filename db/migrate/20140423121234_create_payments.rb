class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :paymentID
      t.datetime :paymentDate
      t.float :paymentAmount
      t.string :paymentMethod
      t.integer :invoiceID

      t.timestamps
    end
  end
end
