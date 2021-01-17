class CreateRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|
      t.integer :reps
      t.integer :sets
      t.belongs_to :workout
      t.belongs_to :exercise

      t.timestamps
    end
  end
end
