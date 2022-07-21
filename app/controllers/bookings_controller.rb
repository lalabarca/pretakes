class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      BookingMailer.new_booking(@booking).deliver_now
      flash.notice = "Youpi ! 🎉 Votre réservation a été créée. Le loueur vous contactera."
    else
      flash.alert = " ⛔️ Erreur : veuillez remplir tous les champs du formulaire."
    end
    redirect_to car_path(@car, anchor: "start_date")
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
