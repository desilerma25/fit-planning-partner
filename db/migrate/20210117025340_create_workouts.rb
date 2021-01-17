class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.belongs_to :user

      t.timestamps
    end
  end
end
