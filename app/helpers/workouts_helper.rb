module WorkoutsHelper

    def authorized_workout_user
        @workout = Workout.find(params[:id])
        @workout.user_id == current_user.id
    end

end
