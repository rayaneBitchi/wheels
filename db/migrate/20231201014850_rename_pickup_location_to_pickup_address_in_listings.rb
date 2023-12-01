class RenamePickupLocationToPickupAddressInListings < ActiveRecord::Migration[7.1]
  def change
    rename_column :listings, :pickup_location, :pickup_address
    rename_column :listings, :return_location, :dropoff_address
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
