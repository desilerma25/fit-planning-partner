class WorkoutsController < ApplicationController

    def new
        @workout = Workout.new
        5.times { @workout.routines.build }
    end

    def create
        @workout = Workout.new(workout_params)
        if @workout.save
            redirect_to user_workouts_path(current_user.id)
        else
            render :new
        end
    end

    private

    def workout_params
        params.require(:workout).permit(:user_id, :name, :routines_attributes)
    end
end
