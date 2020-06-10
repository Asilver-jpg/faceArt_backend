class UsersController < ApplicationController
    def index
        users= User.all
        render json: users
    end
   
    private
    
    def user_params
        params[:user].permit(:user_name, :password)
    end
    
end
