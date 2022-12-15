class ApplicationController < ActionController::API
    include ActionController::Cookies

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    before_action :authorize

    private

    def authorize
      render json: {errors: "Not Authorized"}, status: :unauthorized unless session.include? :user_id
    end

    def render_unprocessable_entity(invalid)
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def render_not_found
      render json: {error: ["#{error.model} not found"]}, status: :not_found

    end

end
