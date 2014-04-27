class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :ClientID
      t.string :ClientName
      t.string :ClientAddress
      t.integer :creditCardNo
      t.string :emergencyContact
      t.datetime :startdate
      t.integer :appointmentCount

      t.timestamps
    end
  end
end
