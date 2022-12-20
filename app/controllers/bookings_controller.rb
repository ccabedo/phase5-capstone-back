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

    # def updated
    # end

    def destroy
        booking = Booking.find(params[:id])
        booking.destroy
        head :no_content
    end
    
    private

    def booking_params
        params.permit(:review)
    end

end
