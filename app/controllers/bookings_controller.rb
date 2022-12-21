class BookingsController < ApplicationController

    def index
        render json: Booking.all, status: :ok
    end

    def show
        booking = Booking.find(params[:id])
        render json: booking, status: :ok
    end

    def create
        booking = Booking.create!(booking_params)
        render json: booking, status: :created
    end

    def update
        booking = Booking.find_by!(id: params[:id])
        booking.update!(review: params[:review])
        # booking.update!(rating: params[:rating])
        render json: booking, status: :ok
    end

    def destroy
        booking = Booking.find_by!(id: params[:id])
        if booking
            booking.destroy
            head :no_content
        else
            render json: {error: "review not found"}, status: :not_found
        end
    end
    
    private

    def booking_params
        params.permit(:review)
    end

end
