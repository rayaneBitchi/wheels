class RemovePriceFromCars < ActiveRecord::Migration[7.1]
  def change
    remove_column :cars, :price, :float
  end
end
