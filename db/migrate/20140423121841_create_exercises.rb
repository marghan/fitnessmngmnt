class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :exerciseID
      t.string :exerciseType
      t.string :exerciseName
      t.string :muscleGroup
      t.string :equipment

      t.timestamps
    end
  end
end
