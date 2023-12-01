class RemovePickUpAdressFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :pick_up_address, :string
    remove_column :bookings, :drop_off_address, :string
  end
end
