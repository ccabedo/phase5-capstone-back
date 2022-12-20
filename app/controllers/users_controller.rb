class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create]
    

    # /user
    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user
        else
            render json: {error: "Not Authorized"}, status: :unauthorized
        end
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
