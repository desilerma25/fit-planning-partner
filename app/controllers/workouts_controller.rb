class WorkoutsController < ApplicationController

    def new
        @workout = Workout.new
        5.times { @workout.routines.build }
    end

    def create
    end

    private

    def workout_params
end
