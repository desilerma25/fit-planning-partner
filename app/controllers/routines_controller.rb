class RoutinesController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :locate_workout

    def new
        @routine = @workout.routines.build #need to asscoiate
    end

    def create 
        @routine = @workout.routines.build(routine_params)
        if @routine.save
            redirect_to workout_routines_path(@workout)
        else
            render :new
        end
    end

    def index
        @routines = @workout.routines 
    end

    private

    def routine_params
        params.require(:routine).permit(:reps, :sets, :exercise_id)
    end

    def locate_workout
        @workout = Workout.find(params[:workout_id])
    end

end
