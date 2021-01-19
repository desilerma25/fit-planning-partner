class ExercisesController < ApplicationController

    def new
        @exercise = Exercise.new
    end

    def create
        @exercise = Exercise.new(exercise_params)
        if @exercise.save
            redirect_to exercise_path(@exercise)
        else
            render :new
        end
    end

    def show
        @exercise = Exercise.find(params[:id])
    end

    def index
        @exercises = Exercise.all
    end

    private 

    def exercise_params
        params.require(:exercise).permit(:name, :target_area, :category)
    end
end
