class CreateStrengths < ActiveRecord::Migration
  def change
    create_table :strengths do |t|
      t.string :exerciseType
      t.integer :maxRepetitions
      t.float :exerciseWeight

      t.timestamps
    end
  end
end
