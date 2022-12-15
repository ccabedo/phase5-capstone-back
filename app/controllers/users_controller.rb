class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create]
    

    # /user
    def show
        user = User.find_by(id: session[:user_id])
        render json: user
    end

    # /signup
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    private

    def user_params
        params.permit(:name, :username, :email, :password, :avatar)
    end
    
end
