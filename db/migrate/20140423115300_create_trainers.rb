class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.integer :trainerID
      t.string :trainerAddress
      t.string :trainerPhone
      t.string :trainerEmail

      t.timestamps
    end
  end
end
