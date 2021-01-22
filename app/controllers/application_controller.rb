class ApplicationController < ActionController::Base
include ApplicationHelper

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

    def redirect_if_not_logged_in
        redirect_to "/" if !logged_in?
    end

end
