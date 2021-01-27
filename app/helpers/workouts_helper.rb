module WorkoutsHelper

    def authorized_workout_user
        @workout = Workout.find(params[:id]) #could take this out and place in controller, avoid touching db
        @workout.user_id == current_user.id
    end

end
