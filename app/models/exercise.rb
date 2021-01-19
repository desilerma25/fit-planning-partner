class Exercise < ApplicationRecord
    has_many :routines
    has_many :workouts, through: :routines

    scope :search_by_target_area, -> (target) { where("target LIKE ?", "%#{target}%")}
end
