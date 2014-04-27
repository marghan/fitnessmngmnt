class CreateFlexibilities < ActiveRecord::Migration
  def change
    create_table :flexibilities do |t|
      t.string :exerciseType
      t.float :stretchDistance

      t.timestamps
    end
  end
end
