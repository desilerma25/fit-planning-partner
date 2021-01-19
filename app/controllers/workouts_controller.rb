class WorkoutsController < ApplicationController

    def new
        @workout = Workout.new
        5.times { @workout.routines.build }
    end

    def create
    end

    private

    def workout_params
        params.require(:workout).permit(:user_id, :name)
    end
end
