class ApplicationController < ActionController::Base

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
    
end
