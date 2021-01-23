class WorkoutsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        @workouts = Workout.all
    end

    def new
        @workout = Workout.new
        5.times { @workout.routines.build }
    end

    def create
        @workout = Workout.new(workout_params)
        @workout.user_id = current_user.id
        if @workout.save
            redirect_to workouts_path(@workout)
        else
            render :new
        end
    end

    def show
        @workout = Workout.find(params[:id])
    end

    def edit
        @workout = Workout.find(params[:id])
    end

    def update
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
        redirect_to workout_path(@workout)
    end

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destroy
        redirect_to workouts_path
    end

    private

    def workout_params
        params.require(:workout).permit(:user_id, :name, routines_attributes: [:id, :reps, :sets, :exercise_id])
    end

end
