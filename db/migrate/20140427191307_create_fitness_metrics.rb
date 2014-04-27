class CreateFitnessMetrics < ActiveRecord::Migration
  def change
    create_table :fitness_metrics do |t|
      t.integer :metricsID
      t.integer :clientID
      t.integer :exerciseID
      t.date :metricsDate
      t.float :weight
      t.integer :Age
      t.float :height
      t.string :sex
      t.float :fatPercent

      t.timestamps
    end
  end
end
