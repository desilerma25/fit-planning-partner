class SessionsController < ApplicationController

    def home
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.find_by(email:params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            # flash[:error] = "Email or Password does not match our records. Please try again."
            redirect_to '/login', alert: "Email or Password does not match our records. Please try again."
        end
    end

    def destroy
        session.delete :user_id
        redirect_to :root, alert: "You have successfully logged out!"
    end

    def omniauth
        user = User.from_omniauth(request.env['omniauth.auth'])
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            redirect_to '/login'
        end
    end
end
