class WorkoutsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @workout = Workout.new
        5.times { @workout.routines.build }
    end

    def create
        @workout = Workout.new(workout_params)
        @workout.user_id = current_user.id
        if @workout.save
            redirect_to user_workouts_path(current_user.id)
        else
            render :new
        end
    end

    def show
        @workout = Workout.find(params[:id])
    end

    private

    def workout_params
        params.require(:workout).permit(:user_id, :name, routines_attributes: [:reps, :sets, :exercise_id])
    end
end
