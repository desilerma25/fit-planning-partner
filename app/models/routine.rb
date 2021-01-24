class Routine < ApplicationRecord
    belongs_to :workout
    belongs_to :exercise

    validates :reps, :sets, numericality: { greater_than: 0}
    
end
