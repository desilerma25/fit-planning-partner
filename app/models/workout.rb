class Workout < ApplicationRecord
    belongs_to :user
    has_many :routines, :dependent => :destroy
    has_many :exercises, through: :routines, :dependent => :destroy

    accepts_nested_attributes_for :routines


end
