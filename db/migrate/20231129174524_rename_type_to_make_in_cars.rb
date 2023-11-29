class RenameTypeToMakeInCars < ActiveRecord::Migration[7.1]
  def change
    rename_column :cars, :type, :make
  end
end
