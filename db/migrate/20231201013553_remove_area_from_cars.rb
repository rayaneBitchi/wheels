class RemoveAreaFromCars < ActiveRecord::Migration[7.1]
  def change
    remove_column :cars, :area, :string
  end
end
