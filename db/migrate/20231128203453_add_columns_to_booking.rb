class AddColumnsToBooking < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :pick_up_address, :string
    add_column :bookings, :drop_off_address, :string
  end
end
