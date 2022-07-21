class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.new_booking.subject
  #
  def new_booking(booking)
    # @greeting = "Hi"

    # mail to: "to@example.org"
    @booking = booking

    mail(
      to:       @booking.car.user.email,
      subject:  "Nouvelle réservation n˚#{@booking.id} créée!"
    )
  end
end
