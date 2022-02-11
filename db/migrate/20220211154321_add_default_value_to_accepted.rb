class AddDefaultValueToAccepted < ActiveRecord::Migration[6.1]
  def change
    change_column_default :bookings, :accepted, from: true, to: false
  end
end
