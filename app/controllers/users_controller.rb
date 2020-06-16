class UsersController < ApplicationController
    def index
        users= User.all
        render json: users, include: [:projects]
    end
    def show
        
        user= User.find(params[:id])
        render json: user, include: [:projects]
    end

    private
    
    def user_params
        params[:user].permit(:user_name, :password)
    end
    
end
