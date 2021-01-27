class RoutinesController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @workout = Workout.find(params[:workout_id])
        @routine = @workout.routines.build #need to asscoiate
    end

    def create 
        @workout = Workout.find(params[:workout_id])
        @routine = @workout.routines.build(routine_params)
        if @routine.save
            redirect_to workout_routines_path(@workout)
        else
            render :new
        end
    end

    def index
        @workout = Workout.find(params[:workout_id])
        @routines = @workout.routines 
    end

    private

    def routine_params
        params.require(:routine).permit(:reps, :sets, :exercise_id)
    end

end
