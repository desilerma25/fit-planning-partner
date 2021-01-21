class Exercise < ApplicationRecord
    has_many :routines
    has_many :workouts, -> {distinct}, through: :routines

    validates :name, uniqueness: { case_sensitive: false }
    validates :name, :target_area, :category, presence: true 

    scope :find_by_target_area, -> (muscle) { where("target_area LIKE ?", "%#{muscle}%")}
    scope :order_by_name, -> { order("lower(name) ASC") }
    scope :unique_targets, -> { select(:target_area).distinct }
    scope :unique_categories, -> { select(:category).distinct }

    # scope :workout_count, -> { count(:workout_id) }
    # scope :unique_workouts, -> { select(:workouts).distinct }

end
