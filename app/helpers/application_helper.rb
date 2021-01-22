module ApplicationHelper

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def nav_bar_view
        if logged_in? 
         render 'layouts/logged_in' 
       else 
         render 'layouts/logged_out' 
       end 
    end

end
