class Exercise < ApplicationRecord
    has_many :routines
    has_many :workouts, through: :routines

    validates :name, uniqueness: { case_sensitive: false }
    validates :name, :target_area, :category, presence: true 

    scope :find_by_target_area, -> (muscle) { where("target_area LIKE ?", "%#{muscle}%")}
    scope :order_by_name, -> { order("lower(name) ASC") }
    # scope :unique_targets, -> { self.uni(:target_area) }

    # def unauthorized_workout_user
    #     if @exercise.user != current_user
    #         redirect_to "/exercises"
    #     end
    # end

end
