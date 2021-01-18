class CreateRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|
      t.integer :reps
      t.integer :sets
      t.belongs_to :workout, foreign_key: true
      t.belongs_to :exercise, foreign_key: true

      t.timestamps
    end
  end
end
