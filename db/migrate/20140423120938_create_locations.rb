class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :locationID
      t.string :LocationAddress
      t.string :LocationPhone
      t.boolean :Outdoor

      t.timestamps
    end
  end
end
