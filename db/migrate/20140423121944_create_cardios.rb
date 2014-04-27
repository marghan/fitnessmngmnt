class CreateCardios < ActiveRecord::Migration
  def change
    create_table :cardios do |t|
      t.string :exerciseType
      t.float :minutesPerMile
      t.integer :exerciseLevel

      t.timestamps
    end
  end
end
