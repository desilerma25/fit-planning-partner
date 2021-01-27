class WorkoutsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_workout, only: [:show, :edit, :update, :destroy]
    before_action :unauthorized_workout, only: [:edit, :update, :destroy]
    

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
            redirect_to user_path(current_user)
        else
            render :new
        end
    end

    def show
        
    end

    def edit
        
    end

    def update
        @workout.update(workout_params)
        redirect_to workout_path(@workout)
    end

    def destroy
        @workout.destroy
        redirect_to workouts_path
    end

    private

    def workout_params
        params.require(:workout).permit(:user_id, :name, routines_attributes: [:id, :reps, :sets, :exercise_id])
    end

    def set_workout
        @workout = Workout.find(params[:id])
    end

    def unauthorized_workout
        if @workout.user_id != current_user.id
            redirect_to workouts_path
        end
    end

end
