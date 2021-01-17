class Workout < ApplicationRecord
    belongs_to :user
    has_many :routines
    has_many :exercises, through: :routines
end
