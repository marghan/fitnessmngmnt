class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :ApptID
      t.integer :clientID
      t.integer :trainerID
      t.integer :locationID
      t.date :apptDate
      t.time :apptTime
      t.string :apptType

      t.timestamps
    end
  end
end
