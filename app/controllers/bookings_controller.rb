class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      flash.notice = "Youpi ! Votre réservation a été créée ! 🎉"
      redirect_to car_path(@car)
    else
      flash.alert = "Erreur: impossible de faire la réservation."
      raise
      render 'cars/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
