class ApplicationController < ActionController::Base
    rescue_from ActiveRecord::RecordNotFound, with: :no_record_found
include ApplicationHelper

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

    def redirect_if_not_logged_in
        redirect_to "/" if !logged_in?
    end

    def no_record_found
        render '/rescue/no_record_found'
    end

end
