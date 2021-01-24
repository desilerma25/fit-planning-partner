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

    def route_not_found
        render file: Rails.public_path.join('404.html'), status: :not_found, layout: false
    end

end
